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

import com.luminar.onlinebookstore.entity.CategoryEntity;
import com.luminar.onlinebookstore.service.CategoryService;

@Controller
public class CategoryController {
	
	@Autowired
    CategoryService categoryService;
	
	 @GetMapping("/add-cat")
	    public ModelAndView getAddCategory() {
	        ModelAndView mav = new ModelAndView("Admin/AddCategory"); 
	       
	        return mav;
	    }

	    @PostMapping("/save-cat")
	    public String saveCategory(@ModelAttribute("categoryEntity") CategoryEntity categoryEntity) {
	        categoryService.saveCategory(categoryEntity);
	        return "redirect:/home";
	    }
	    
	    @GetMapping("/view-cat")
		public ModelAndView viewUsers(Model model) {
			ModelAndView mav = new ModelAndView("Admin/ViewCategory");
			List<CategoryEntity> categories = categoryService.getAllCategories();
			mav.addObject("categories", categories);
			return mav;
		}

	    @GetMapping("/edit-cat/{id}")
	    public ModelAndView getEditCategory(@PathVariable("id") Integer catId) {
	        ModelAndView mav = new ModelAndView("Admin/EditCategory"); 
	        CategoryEntity categoryEntity = categoryService.getCategoryById(catId);
	        mav.addObject("categoryEntity", categoryEntity);
	        return mav;
	    }

	    @PostMapping("/update-cat/{id}")
	    public String updateCategory(@PathVariable("id") Integer catId, @ModelAttribute("category") CategoryEntity categoryDetails) {
	    	CategoryEntity category = categoryService.getCategoryById(catId);
	        if (category != null) {
	            category.setCatName(categoryDetails.getCatName());
	            categoryService.saveCategory(category);
	        }
	        return "redirect:/home";
	    }

	    @GetMapping("/delete-cat/{id}")
	    public String deleteCategory(@PathVariable("id") Integer catId) {
	        categoryService.deleteCategory(catId);
	        return "redirect:/home";
	    }

}
