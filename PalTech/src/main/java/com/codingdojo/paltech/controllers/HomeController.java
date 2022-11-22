package com.codingdojo.paltech.controllers;

import java.security.Principal;

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

import com.codingdojo.paltech.models.User;
import com.codingdojo.paltech.services.UserService;
import com.codingdojo.paltech.validator.UserValidator;
@Controller
public class HomeController {
  
    
    

	@Autowired
	UserService userService;
	
	@Autowired
	
	UserValidator userValidator;
	
	  @RequestMapping("/")
	    public String hello() { // 3
	            return "home.jsp";
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
    public String login(@RequestParam(value="error", required=false) String error, @RequestParam(value="logout", required=false) String logout, Model model) {
        if(error != null) {
            model.addAttribute("errorMessage", "Invalid Credentials, Please try again.");
        }
        if(logout != null) {
            model.addAttribute("logoutMessage", "Logout Successful!");
        }
        return "loginuserPage.jsp";
    }
    @RequestMapping("/home")
    public String home(Principal principal, Model model) {
        String username = principal.getName();
        model.addAttribute("currentUser", userService.findByUsername(username));
        return "home.jsp";
    }

}
