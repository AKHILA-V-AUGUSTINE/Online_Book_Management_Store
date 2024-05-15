package com.luminar.onlinebookstore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.luminar.onlinebookstore.entity.UserEntity;
import com.luminar.onlinebookstore.service.UserService;

/*import jakarta.servlet.http.HttpSession;*/

@Controller
public class LoginController {

	@Autowired
	UserService theUserService;

	@GetMapping("/")
	public String getIndex() {

		return "Index";
	}
	
	@GetMapping("/about")
	public String getAbout() {

		return "About";
	}
	
	@GetMapping("/contact")
	public String getContact() {

		return "Contact";
	}

	@GetMapping("/Login")
	public ModelAndView showLoginPage() {
		return new ModelAndView("Login");
	}

	@PostMapping("/Login")
	public ModelAndView processLogin(String email, String pass) {
		ModelAndView modelAndView = new ModelAndView();

		/*
		 * if (isValidUser) { modelAndView.setViewName("redirect:/home"); }
		 */
		UserEntity user = theUserService.getUserByEmail(email);

		if (user != null && pass.equals(user.getUserPassword())) {
			// Check user role
			String role = user.getUserRole();
			if ("admin".equals(role)) {
				modelAndView.setViewName("redirect:/home");
			} else if ("STAFF".equals(role)) {
				modelAndView.setViewName("redirect:/staff/home");
			} else if ("USER".equals(role)) {
				modelAndView.setViewName("redirect:/user");
			} else {
				// Handle unrecognized role
				modelAndView.addObject("error", "Unrecognized user role");
				modelAndView.setViewName("/Login");
			}
		} else {
			modelAndView.addObject("error", "Invalid email or password");
			modelAndView.setViewName("/Login");
		}
		return modelAndView;
	}

	
	/*
	 * public String showLoginForm(HttpSession session) {
	 * session.setAttribute("var", "My Variable"); return "Login"; }
	 */

	@GetMapping("/access-denied")
	public String accessDenied() {
		return "access-denied";
	}

}
