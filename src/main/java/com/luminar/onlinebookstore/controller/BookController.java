package com.luminar.onlinebookstore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.luminar.onlinebookstore.entity.BookEntity;
import com.luminar.onlinebookstore.service.BookService;
import com.luminar.onlinebookstore.service.CategoryService;

@Controller
public class BookController {

	@Autowired
    private BookService bookService;

    @Autowired
    private CategoryService categoryService;

    @GetMapping("/add-book")
    public ModelAndView getAddBook() {
        ModelAndView mav = new ModelAndView("Admin/AddBook");
        mav.addObject("categories", categoryService.getAllCategories()); // Assuming you have a method to get all categories
        return mav;
    }

    @PostMapping("/save-book")
    public String saveBook(@ModelAttribute("bookEntity") BookEntity bookEntity) {
        bookService.saveBook(bookEntity);
        return "redirect:/home";
    }

    @GetMapping("/view-book")
    public ModelAndView viewBooks(Model model) {
        ModelAndView mav = new ModelAndView("Admin/ViewBooks");
        List<BookEntity> books = bookService.getAllBooks();
        mav.addObject("books", books);
        return mav;
    }

    @GetMapping("/edit-book/{id}")
    public ModelAndView getEditBook(@PathVariable("id") Integer bookId) {
        ModelAndView mav = new ModelAndView("Admin/EditBook");
        BookEntity bookEntity = bookService.getBookById(bookId);
        mav.addObject("bookEntity", bookEntity);
        mav.addObject("categories", categoryService.getAllCategories()); // Assuming you have a method to get all categories
        return mav;
    }

    @PostMapping("/update-book/{id}")
    public String updateBook(@PathVariable("id") Integer bookId, @ModelAttribute("bookEntity") BookEntity bookDetails) {
        BookEntity book = bookService.getBookById(bookId);
        if (book != null) {
            book.setBookName(bookDetails.getBookName());
            book.setbookDesc(bookDetails.getbookDesc());
            book.setBookPrice(bookDetails.getBookPrice());
            book.setCategory(bookDetails.getCategory()); // Assuming you have a method to get the CategoryEntity from bookDetails
            bookService.saveBook(book);
        }
        return "redirect:/home";
    }

    @GetMapping("/delete-book/{id}")
    public String deleteBook(@PathVariable("id") Integer bookId) {
        bookService.deleteBook(bookId);
        return "redirect:/home";
    }
}
