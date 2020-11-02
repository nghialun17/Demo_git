package com.books.services.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.books.model.Book;
import com.books.repository.BookRepository;
import com.books.services.BookService;

/**
 * @author Duong
 *
 */
@Service
public class BookServiceImpl implements BookService{

	
	@Autowired 
	private BookRepository bookRepository ;
	
	@Override
	public List<Book> getAll() {
		List<Book> books = new ArrayList<Book>() ;
		books = bookRepository.findAll();
		return books;
	}

}
