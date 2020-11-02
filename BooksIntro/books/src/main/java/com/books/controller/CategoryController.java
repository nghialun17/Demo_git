package com.books.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.books.model.Category;
import com.books.model.Publisher;
import com.books.services.CategoryServices;
import com.books.services.PublisherService;

@Controller
public class CategoryController {

	@Autowired
	private CategoryServices categoryServices;
	
	@Autowired
	private PublisherService publisherService;


	@RequestMapping(value = { "/show-detail-category" }, method = RequestMethod.GET)
	public ModelAndView getAllPublisher(@RequestParam("categoryId") Integer categoryId) {
		ModelAndView modelAndView = new ModelAndView();
		Category category = categoryServices.getCategoryById(categoryId);
		List<Category> categories = categoryServices.getAllCategory();
		List<Publisher> publishers = publisherService.getAllPublisher();
        modelAndView.addObject("publishers", publishers);
        modelAndView.addObject("category", category);
        modelAndView.addObject("categories", categories);
		modelAndView.setViewName("category");
		return modelAndView;
	}
}
