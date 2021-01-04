package com.chikaho.controller;

import com.chikaho.pojo.Books;
import com.chikaho.service.BooksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/book")
//@ResponseBody
public class BooksController {

    // controller调用service
    @Autowired
    @Qualifier("BooksServiceImpl")
    private BooksService booksService;

    // 查询全部书籍
    @RequestMapping("/allBook")
    public String list(Model model) {
        List<Books> list = booksService.queryAllBook();
        model.addAttribute("list",list);
        return "books/allBook";
    }
    /*@RequestMapping("/allBook")
    *//*@ResponseBody*//*
    public List<Books> list() {
        return booksService.queryAllBook();
    }*/

    // 增加书籍页面
    @RequestMapping("/addBookPage")
    public String toAddPaper() {
        return "books/addBookPage";
    }

    // 添加书籍
    @RequestMapping("/addBook")
    public String addBook(Books books) {
        System.out.println("addBook=>" + books);
        booksService.addBooks(books);
        return "redirect:/book/allBook"; // 重定向
    }

    // 修改书籍页面
    @RequestMapping("/updateBookPage")
    public String toUpdatePage(int id, Model model) {
        Books books = booksService.queryBook(id);
        model.addAttribute("books", books);
        return "books/updateBookPage";
    }

    // 修改书籍
    @RequestMapping("/updateBook")
    public String updateBook(Books books) {
        System.out.println("updateBook=>" + books);
        booksService.updateBooks(books);
        return "redirect:/book/allBook";
    }

    // 删除书籍
    @RequestMapping("/deleteBook/{books_id}")
    public String deleteBookById(@PathVariable("books_id") int id) {
        booksService.deleteBooksById(id);
        return "redirect:/book/allBook";
    }

    // 根据名称查询书籍
    @RequestMapping("/queryBook")
    public String queryBook(String queryBookName, Model model) {
        Books books = booksService.queryBookByName(queryBookName);
        List<Books> list = new ArrayList<Books>();
        list.add(books);
        if (books == null) {
            list = booksService.queryAllBook();
            model.addAttribute("error", "未查询到此书籍");
        }
        model.addAttribute("list", list);
        return "books/allBook";
    }

}
