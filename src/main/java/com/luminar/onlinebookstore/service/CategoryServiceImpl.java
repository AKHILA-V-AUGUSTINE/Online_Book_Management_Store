package com.luminar.onlinebookstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.luminar.onlinebookstore.entity.CategoryEntity;
import com.luminar.onlinebookstore.repository.CategoryRepository;

@Service
public class CategoryServiceImpl implements CategoryService {
	 @Autowired
	    private CategoryRepository categoryRepository;

	    @Override
	    public List<CategoryEntity> getAllCategories() {
	        return categoryRepository.findAll();
	    }

	    @Override
	    public CategoryEntity getCategoryById(Integer catId) {
	        return categoryRepository.findById(catId).orElse(null);
	    }

	    @Override
	    public CategoryEntity saveCategory(CategoryEntity categoryEntity) {
	        return categoryRepository.save(categoryEntity);
	    }

	    @Override
	    public void deleteCategory(Integer catId) {
	        categoryRepository.deleteById(catId);
	    }

}
