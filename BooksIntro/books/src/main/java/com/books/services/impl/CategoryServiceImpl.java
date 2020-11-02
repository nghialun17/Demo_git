package com.books.services.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.books.model.Category;
import com.books.repository.CategoryRepository;
import com.books.services.CategoryServices;

@Service
public class CategoryServiceImpl implements CategoryServices{

	
	@Autowired
	private CategoryRepository categoryRepository ;

	@Override
	public List<Category> getAllCategory() {
		List<Category> categories = new ArrayList<Category>();
		categories = categoryRepository.findAll();
		return categories;
	}

	@Override
	public Category getCategoryById(Integer categoryId) {
		Category category = new  Category();
		category = categoryRepository.findByCategoryId(categoryId);
		return category;
	} 
	
	
}
