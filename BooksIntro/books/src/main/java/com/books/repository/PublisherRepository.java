package com.books.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.books.model.Publisher;

@Repository
public interface PublisherRepository extends JpaRepository<Publisher, Integer> {
	
	Publisher findByPubId(Integer pubId);
}
