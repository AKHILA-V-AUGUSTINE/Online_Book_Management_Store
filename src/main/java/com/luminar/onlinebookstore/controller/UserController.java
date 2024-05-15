package com.luminar.onlinebookstore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.luminar.onlinebookstore.entity.UserEntity;
import com.luminar.onlinebookstore.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;

	@GetMapping("/home")
	public ModelAndView getAllUsers() {
		ModelAndView mav = new ModelAndView("Admin/Home");

		return mav;
	}
	
	@GetMapping("/addUsers")
	public ModelAndView getAddUsers() {
		ModelAndView mav = new ModelAndView("Admin/AddUsers");

		return mav;
	}
	

	@GetMapping("/Register")
	public String getRegister(Model model) {
		model.addAttribute("userEntity", new UserEntity());
		return "Register";
	}

	@PostMapping("/save-user")
	public String saveUsers(@ModelAttribute("userEntity") UserEntity userEntity) {
		userService.saveUser(userEntity);
		return "redirect:/home";
	}

	@GetMapping("/user-update/{id}")
	public ModelAndView getUser(@PathVariable("id") Integer userId) {
		ModelAndView mav = new ModelAndView("Admin/EditUsers");
		UserEntity userEntity = userService.getById(userId);
		mav.addObject("user", userEntity);
		return mav;
	}

	@GetMapping("/view-users")
	public ModelAndView viewUsers(Model model) {
		ModelAndView mav = new ModelAndView("Admin/ViewUsers");
		List<UserEntity> userList = userService.getAll();
		mav.addObject("users", userList);
		return mav;
	}

	@GetMapping("/user-delete/{id}")
	public String deleteUser(@PathVariable("id") Integer userId) {
		UserEntity deleteUser = userService.getById(userId);
		userService.deleteUser(deleteUser);
		return "redirect:/home";
	}

	@GetMapping("/search-users")
	public ModelAndView searchUsers(@RequestParam("query") String query) {
		ModelAndView mav = new ModelAndView("Admin/SearchResult");
		List<UserEntity> userList = userService.searchUsers(query);
		mav.addObject("users", userList);
		return mav;
	}

	@GetMapping("/view-users/sort/{columnName}/{order}")
	public ModelAndView viewUsersSortedBy(@PathVariable("columnName") String columnName,
			@PathVariable("order") String order, Model model) {
		return getUsersViewSortedBy(columnName, order, model);
	}

	private ModelAndView getUsersViewSortedBy(String columnName, String order, Model model) {
		List<UserEntity> userList = userService.getAllSortedBy(columnName, order);
		ModelAndView mav = new ModelAndView("Admin/ViewUsers");
		mav.addObject("users", userList);
		return mav;
	}
	
	@GetMapping("/user")
	public ModelAndView getUserHome() {
		ModelAndView mav = new ModelAndView("Users/Home");

		return mav;
	}

}
