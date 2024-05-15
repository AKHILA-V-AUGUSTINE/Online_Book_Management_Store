package com.luminar.onlinebookstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.luminar.onlinebookstore.entity.BookEntity;
import com.luminar.onlinebookstore.repository.BookRepository;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
    private BookRepository bookRepository;

    @Override
    public List<BookEntity> getAllBooks() {
        return bookRepository.findAll();
    }

    @Override
    public BookEntity getBookById(Integer bookId) {
        return bookRepository.findById(bookId).orElse(null);
    }

    @Override
    public BookEntity saveBook(BookEntity bookEntity) {
        return bookRepository.save(bookEntity);
    }

    @Override
    public void deleteBook(Integer bookId) {
        bookRepository.deleteById(bookId);
    }
}
