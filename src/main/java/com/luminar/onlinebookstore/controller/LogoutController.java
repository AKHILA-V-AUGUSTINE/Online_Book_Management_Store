package com.luminar.onlinebookstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class LogoutController {
	@GetMapping("/Logout")
    public String logout(HttpServletRequest request) {
        // Invalidate the session
        request.getSession().invalidate();
        // Redirect to the login page
        return "redirect:/";
    }

}
