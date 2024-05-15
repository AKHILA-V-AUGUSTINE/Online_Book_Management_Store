package com.luminar.onlinebookstore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.luminar.onlinebookstore.entity.BookEntity;
import com.luminar.onlinebookstore.service.BookService;


@Controller
public class ViewBooksController {
	@Autowired
	private BookService bookService;

	
	@GetMapping("/viewbooks")
	public ModelAndView getAllUsers() {
		ModelAndView mav = new ModelAndView("Users/ViewBooks");
		List<BookEntity> books = bookService.getAllBooks();
		mav.addObject("books", books);
		return mav;
	}

}
