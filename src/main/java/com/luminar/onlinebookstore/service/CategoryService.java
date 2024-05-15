package com.luminar.onlinebookstore.service;

import java.util.List;

import com.luminar.onlinebookstore.entity.CategoryEntity;

public interface CategoryService {

	List<CategoryEntity> getAllCategories();

	CategoryEntity getCategoryById(Integer catId);

	CategoryEntity saveCategory(CategoryEntity categoryEntity);

	void deleteCategory(Integer catId);

}
