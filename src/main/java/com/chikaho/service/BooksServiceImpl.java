package com.chikaho.service;

import com.chikaho.mapper.BooksMapper;
import com.chikaho.pojo.Books;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BooksServiceImpl implements BooksService{

    //service调用dao(mapper)
    @Autowired
    private static BooksMapper booksMapper;

    public BooksMapper getBooksMapper() {
        return booksMapper;
    }

    public void setBooksMapper(BooksMapper booksMapper) {
        this.booksMapper = booksMapper;
    }

    public int addBooks(Books books) {
        return booksMapper.addBooks(books);
    }

    public int deleteBooksById(int id) {
        return booksMapper.deleteBooksById(id);
    }

    public List<Books> queryAllBook() {
        return booksMapper.queryAllBook();
    }

    public int updateBooks(Books books) {
        return booksMapper.updateBooks(books);
    }

    public Books queryBook(int books_no) {
        return booksMapper.queryBook(books_no);
    }

    public Books queryBookByName(String books_name) {
        return booksMapper.queryBookByName(books_name);
    }
}
