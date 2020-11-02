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
public class PublisherController {

	@Autowired
	private PublisherService publisherService;

	@Autowired
	private CategoryServices categoryServices;

	@RequestMapping(value = { "/show-detail-publisher" }, method = RequestMethod.GET)
	public ModelAndView getAllPublisher(@RequestParam("pubId") Integer pubId) {
		ModelAndView modelAndView = new ModelAndView();
		Publisher publisher = publisherService.getPublisherById(pubId);
		List<Category> categories = categoryServices.getAllCategory();
		List<Publisher> publishers = publisherService.getAllPublisher();
        modelAndView.addObject("publishers", publishers);
		modelAndView.addObject("publisher", publisher);
		modelAndView.addObject("categories", categories);
		modelAndView.setViewName("publisher");
		return modelAndView;
	}
}
