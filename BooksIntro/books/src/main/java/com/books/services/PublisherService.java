package com.books.services;

import java.util.List;

import com.books.model.Publisher;

public interface PublisherService {
	/**
	 * @return
	 */
	List<Publisher> getAllPublisher();
	
	Publisher getPublisherById(Integer pubId);
}
