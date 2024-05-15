package com.luminar.onlinebookstore.service;

import java.util.List;

import com.luminar.onlinebookstore.entity.BookEntity;

public interface BookService {
	List<BookEntity> getAllBooks();

	BookEntity getBookById(Integer bookId);

	BookEntity saveBook(BookEntity bookEntity);

	void deleteBook(Integer bookId);
}
