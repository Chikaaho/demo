package com.chikaho.test;

import com.chikaho.pojo.Books;
import com.chikaho.service.BooksService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringTest {

    @Test
    public void test1() {
        ApplicationContext context =
                new ClassPathXmlApplicationContext("applicationContext.xml");
        BooksService books = (BooksService) context.getBean("BooksServiceImpl");
        for (Books books1 : books.queryAllBook()) {
            System.out.println(books1);
        }
    }

    @Test
    public void test2() {
        boolean flag = false;
        if (!flag) {
            System.out.println("false");
        }
    }

}
