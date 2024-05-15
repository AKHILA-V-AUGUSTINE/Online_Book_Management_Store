package com.luminar.onlinebookstore.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "book_details")
public class BookEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer bookId;
    private String bookName;
    private String bookDesc;
    private Double bookPrice;

    @ManyToOne
    @JoinColumn(name = "catId")
    private CategoryEntity category;

	public BookEntity() {
	}

	public BookEntity(Integer bookId, String bookName, String bookDesc, Double bookPrice,
			CategoryEntity category) {
		this.bookId = bookId;
		this.bookName = bookName;
		this.bookDesc = bookDesc;
		this.bookPrice = bookPrice;
		this.category = category;
	}

	public Integer getBookId() {
		return bookId;
	}

	public void setBookId(Integer bookId) {
		this.bookId = bookId;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getbookDesc() {
		return bookDesc;
	}

	public void setbookDesc(String bookDesc) {
		this.bookDesc = bookDesc;
	}

	public Double getBookPrice() {
		return bookPrice;
	}

	public void setBookPrice(Double bookPrice) {
		this.bookPrice = bookPrice;
	}

	public CategoryEntity getCategory() {
		return category;
	}

	public void setCategory(CategoryEntity category) {
		this.category = category;
	}
}