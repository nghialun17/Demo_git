package com.books.services.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.books.model.Publisher;
import com.books.repository.PublisherRepository;
import com.books.services.PublisherService;

@Service
public class PublisherServiceImpl implements PublisherService {

	
	@Autowired 
	private PublisherRepository publisherRepo ;
	
	
	/**
	 *
	 */
	@Override
	public List<Publisher> getAllPublisher() {
		List<Publisher> publishers = new  ArrayList<Publisher>();
		publishers = publisherRepo.findAll() ;
		return publishers;
	}


	/**
	 *
	 */
	@Override
	public Publisher getPublisherById(Integer pubId) {
		Publisher publisher = new Publisher();
		publisher = publisherRepo.findByPubId(pubId);
		return publisher;
	}

}
