package com.books.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.books.model.Book;
import com.books.model.Category;
import com.books.model.Publisher;
import com.books.services.BookService;
import com.books.services.CategoryServices;
import com.books.services.PublisherService;

@Controller
public class BookController {

	
	@Autowired
	private BookService bookService ; 
	
	@Autowired
	private PublisherService publisherService ;
	
	@Autowired
	private CategoryServices categoryServices ;
	
	
    /**
     * @return
     */
    @RequestMapping(value={"/books"}, method = RequestMethod.GET)
    public ModelAndView getAllBooks(){
        ModelAndView modelAndView = new ModelAndView();
        List<Book> books = bookService.getAll();
        List<Publisher> publishers = publisherService.getAllPublisher();
        List<Category> categories = categoryServices.getAllCategory();
        modelAndView.addObject("categories", categories);
        modelAndView.addObject("publishers", publishers);
        modelAndView.addObject("books", books);
        System.out.println(books);
        modelAndView.setViewName("index");
        return modelAndView;
    }
    
  
}
