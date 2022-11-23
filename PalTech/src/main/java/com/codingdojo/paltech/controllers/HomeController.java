package com.codingdojo.paltech.controllers;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.codingdojo.paltech.models.LoginWorker;
import com.codingdojo.paltech.models.Review;
import com.codingdojo.paltech.models.User;
import com.codingdojo.paltech.models.Worker;
import com.codingdojo.paltech.services.UserService;
import com.codingdojo.paltech.services.WorkerService;
import com.codingdojo.paltech.services.EmailSenderService;
import com.codingdojo.paltech.services.ReviewService;
import com.codingdojo.paltech.validator.UserValidator;

@Controller
public class HomeController {

	@Autowired
	UserService userService;

	@Autowired
	WorkerService workerService;
	
	@Autowired
	ReviewService reviewService;

	@Autowired

	UserValidator userValidator;
	
	@Autowired
	EmailSenderService senderService;

	@RequestMapping("/home")
	public String hello(HttpSession session, Model model) { // 3
		if (session.getAttribute("user_id") != null) {
			System.out.println("izz");
			Long loggedID = (Long) session.getAttribute("user_id");
			User thisuser = userService.findById(loggedID);
			model.addAttribute("thisuser", thisuser);
			model.addAttribute("loggedID", loggedID);
			return "home.jsp";}
			else if (session.getAttribute("workerId") != null) {
			System.out.println("sidxdxcgvhbjbjbjbhvhz");
			Long loggedWorker = (Long) session.getAttribute("workerId");
			Worker thisworker = workerService.findWorkerById(loggedWorker);
			model.addAttribute("thisworker", thisworker);
			model.addAttribute("loggedWorker", loggedWorker);
			return "home.jsp";
		}
		
		else {
			System.out.println(session.getAttribute("user_id"));
			System.out.println("ldfngkdfnjgnjf");
			return "home.jsp";
		}

	}

	@RequestMapping("/reg/user")
	public String registerForm(@ModelAttribute("user") User user) {
		return "regUserPage.jsp";
	}

	@PostMapping("/registartion")
	public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, Model model) {
		// NEW
		userValidator.validate(user, result);
		if (result.hasErrors()) {
			return "regUserPage.jsp";
		}
		userService.saveWithUserRole(user);
		return "redirect:/";
	}

	@RequestMapping("/login/user")
	public String login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		if (error != null) {
			model.addAttribute("errorMessage", "Invalid Credentials, Please try again.");

		}
		if (logout != null) {
			model.addAttribute("logoutMessage", "Logout Successful!");
		}

		return "loginuserPage.jsp";
	}

	@RequestMapping("/")
	public String home(Principal principal, Model model, RedirectAttributes redirectAttributes, HttpSession session,
			HttpServletRequest request) {
		if (principal != null) {
			String username = principal.getName();
			model.addAttribute("currentUser", userService.findByUsername(username));
			request.getSession().setAttribute("currentUser", userService.findByUsername(username));
			User temp = userService.findByUsername(username);
			session.setAttribute("user_id", temp.getId());
			System.out.println("izzzzzzzzzzzz");
			return "redirect:/home";
		} else {
			return "home.jsp";

		}

	}

	@RequestMapping("/reg/worker")
	public String registerWorkerForm(@ModelAttribute("worker") Worker worker) {
		return "regWorkerPage.jsp";
	}

	@PostMapping("/reg/worker")
	public String register(@Valid @ModelAttribute("newWorker") Worker newWorker, BindingResult result, HttpSession session,
			Model model) {

		Worker worker = workerService.register(newWorker, result);

		if (result.hasErrors()) {
			model.addAttribute("newLogin", new LoginWorker());
			return "loginworkerpage.jsp";
		}

		session.setAttribute("workerId", worker.getId());

		return "redirect:/home";
	}

	@PostMapping("/login/worker")
	public String login(@Valid @ModelAttribute("newLogin") LoginWorker newLogin, BindingResult result, Model model,
			HttpSession session) {

		Worker worker = workerService.login(newLogin, result);

		if (result.hasErrors()) {
			model.addAttribute("newUser", new User());
			return "loginworkerpage.jsp";
		}

		session.setAttribute("workerId", worker.getId());
		System.out.println(worker.getId());
		return "redirect:/home";
	}

	@GetMapping("/login/worker")
	public String loginWorker(@ModelAttribute("newLogin") LoginWorker newLogin) {
		return "loginworkerpage.jsp";
	}
	
	@RequestMapping("/admin")
    public String h() {
    	return "userhome.jsp";
    }
	
	@GetMapping("/worker/{id}")
	public String showWorker(@ModelAttribute("review") Review review,Model model, @PathVariable("id") Long workerId) {
		Worker currentWorker = workerService.findWorkerById(workerId);
		model.addAttribute("currentWorker", currentWorker);
		
		model.addAttribute("allReviews", reviewService.allRatings(workerId));
		
		return "workerProfile.jsp";
		
	}
	
	@GetMapping("/worker/{id}/edit")
	public String editWorkerProfile(@PathVariable("id") Long id, Model model,@ModelAttribute("worker") Worker worker) {
		Worker currentWorker = workerService.findWorkerById(id);
		model.addAttribute("currentWorker", currentWorker);
		return "editWorker.jsp";
	}
	
	@PutMapping("/worker/{id}/edit")
	public String updateProject(@Valid @ModelAttribute("worker") Worker worker, BindingResult result, @PathVariable("id")Long id,HttpSession session,Model model) {
		if (result.hasErrors()) {
			Worker currentWorker = workerService.findWorkerById(id);
			model.addAttribute("currentWorker", currentWorker);
			System.out.println("sdsdsdsssssss");
			return "editWorker.jsp";
		}
	
//		Worker currentWorker = workerService.findWorkerById(id);
		
		
	
		
		
		workerService.createWorker(worker);
		return "redirect:/worker/"+ id;
	}
	
	@GetMapping("/destroy")
	public String destroy(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	@GetMapping("/allworkers")
	public String allworkers(Model model) {
		model.addAttribute("allworkers", workerService.allWorkers());
		return "allworkers.jsp";
	}
	@PostMapping("/addrating/{wId}")
	public String addrating(@PathVariable("wId") Long wId,RedirectAttributes redirectAttributes, @Valid @ModelAttribute("review") Review review, BindingResult result, Model model) {
		Worker currentWorker = workerService.findWorkerById(wId);
		reviewService.creatReview(review);
		
//		List<Review> list = new ArrayList<>();
//		 list.add(thisReview);
		
//		 for (int i = 0; i < list.size(); i++)
//	            sum += list.get(i);
//		for (Review i : reviewService.allRatings(wId)) {
//			
//		}
		model.addAttribute("allReviews", reviewService.allRatings(wId));
//		System.out.println(reviewService.allRatings(wId));
		
//		System.out.println( reviewService.allRatings(wId));
		Integer temp =0;
		for(int i=0;i< reviewService.allRatings(wId).size();i++) {
			
			temp+=reviewService.allRatings(wId).get(i).getRating();
			
		}
		
		
		System.out.println(temp);
		System.out.println(reviewService.allRatings(wId).size());
		Integer size= reviewService.allRatings(wId).size();
		double avarege = temp/size;
		System.out.println(avarege);
		currentWorker.setRating(avarege);
		workerService.editWorker(currentWorker);
		
		redirectAttributes.addAttribute("avg", avarege);
		
		return "redirect:/worker/"+wId;
		
	}
	
	@RequestMapping("/send/{workerId}")
	public String triggerMail(Principal principal, @PathVariable("workerId") Long workerId) throws MessagingException {
	   if (principal != null) {
		   String userName = principal.getName();
//		   String userMobile = principal.getMobile();
//		   String userEmail = principal.getEmail();
		   
		   Worker worker = workerService.findWorkerById(workerId);
		   String workerEmail = worker.getEmail();
		   senderService.sendSimpleEmail(workerEmail,
		     		"You got a new offer!",
				    userName + "wants to contact with you to make a deal, please feel free to reach him any time." );
		   return "redirect:/";
	   }
	   else {
		   return "home.jsp";
	   }
	   



	}
	
	
	

}
