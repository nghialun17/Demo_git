package com.books.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "book")
public class Book {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "book_id")
	private int bookId;

	@Column(name = "title", columnDefinition = "nvarchar(200)")
	private String title;

	@Column(name = "total_pages")
	private Integer totalPages;

	@Column(name = "rating")
	private Integer rating;

	@Column(name = "author", columnDefinition = "nvarchar(200)")
	private String author;

	@Column(name = "description", columnDefinition = "nvarchar(200)")
	private String description;

	@Column(name = "image_url", columnDefinition = "nvarchar(200)")
	private String imageUrl;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "publisher_id")
	private Publisher pubNo;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "category_id")
	private Category caNo;

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(Integer totalPages) {
		this.totalPages = totalPages;
	}

	public Integer getRating() {
		return rating;
	}

	public void setRating(Integer rating) {
		this.rating = rating;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public Publisher getPubNo() {
		return pubNo;
	}

	public void setPubNo(Publisher pubNo) {
		this.pubNo = pubNo;
	}

	@Override
	public String toString() {
		return "Book [bookId=" + bookId + ", title=" + title + ", totalPages=" + totalPages + ", rating=" + rating
				+ ", author=" + author + ", description=" + description + ", imageUrl=" + imageUrl + "]";
	}
	
	

}
