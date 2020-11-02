package com.books.services;

import java.util.List;

import com.books.model.Category;

public interface CategoryServices {

	List<Category> getAllCategory() ;
	
	Category getCategoryById(Integer categoryId);
}
