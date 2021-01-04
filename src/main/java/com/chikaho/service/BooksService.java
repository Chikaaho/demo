package com.chikaho.service;

import com.chikaho.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BooksService {


    //增加书本
    int addBooks(Books books);

    //删除书本
    int deleteBooksById(int books_id);

    //查询书本信息
    List<Books> queryAllBook();

    //修改书本信息
    int updateBooks(Books books);

    //根据编号查询一本书
    Books queryBook(int books_id);

    //根据名称查询一本书
    Books queryBookByName(String books_name);

}
