package com.books.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "publisher")
public class Publisher {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "publisher_id")
	private int pubId;

	@Column(name = "publisher_name" ,columnDefinition="nvarchar(50)")
	private String publisherName;


	@OneToMany(mappedBy = "pubNo")
	private List<Book> books = new ArrayList<Book>();


	public int getPubId() {
		return pubId;
	}


	public void setPubId(int pubId) {
		this.pubId = pubId;
	}


	public String getPublisherName() {
		return publisherName;
	}


	public void setPublisherName(String publisherName) {
		this.publisherName = publisherName;
	}


	public List<Book> getBooks() {
		return books;
	}


	public void setBooks(List<Book> books) {
		this.books = books;
	}


	
	
	
}
