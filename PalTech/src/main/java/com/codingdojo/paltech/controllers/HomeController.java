package com.codingdojo.paltech.controllers;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.codingdojo.paltech.models.User;
import com.codingdojo.paltech.services.UserService;
import com.codingdojo.paltech.validator.UserValidator;
@Controller
public class HomeController {
  
    
    

	@Autowired
	UserService userService;
	
	@Autowired
	
	UserValidator userValidator;
	
	  @RequestMapping("/home")
	    public String hello(HttpSession session,Model model) { // 3
		  if(session.getAttribute("user_id") != null ) {
			  System.out.println("izz");
			  Long loggedID = (Long) session.getAttribute("user_id");
			  User thisuser = userService.findById(loggedID);
			  model.addAttribute("thisuser",thisuser);
			model.addAttribute("loggedID",loggedID);
			return "home.jsp";
		  }
		  else {
			  System.out.println(session.getAttribute("user_id"));
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
    
    @RequestMapping("/admin")
    public String h() {
    	return "userhome.jsp";
    }
    
    
    @RequestMapping("/login/user")
    public String login(@RequestParam(value="error", required=false) String error, @RequestParam(value="logout", required=false) String logout, Model model) {
        if(error != null) {
            model.addAttribute("errorMessage", "Invalid Credentials, Please try again.");
            
        }
        if(logout != null) {
            model.addAttribute("logoutMessage", "Logout Successful!");
        }
        
        return "loginuserPage.jsp";
    }
    @RequestMapping("/")
    public String home(Principal principal, Model model,RedirectAttributes redirectAttributes,HttpSession session,HttpServletRequest request) {
    	if (principal != null) {
        String username = principal.getName();
        model.addAttribute("currentUser", userService.findByUsername(username));
        request.getSession().setAttribute("currentUser", userService.findByUsername(username));
        User temp = userService.findByUsername(username);
        session.setAttribute("user_id", temp.getId());
        System.out.println("izzzzzzzzzzzz");
        return "redirect:/home";
        }
    	else {
            return "home.jsp";

    	}
    	
        
    }
 

}
