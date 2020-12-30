package com.chikaho.pojo;

public class Books {

    private int books_id;
    private String books_no;
    private String books_name;
    private String books_msg;
    private int books_stock;

    public Books() {
    }

    public Books(int books_id, String books_no, String books_name, String books_msg, int books_stock) {
        this.books_id = books_id;
        this.books_no = books_no;
        this.books_name = books_name;
        this.books_msg = books_msg;
        this.books_stock = books_stock;
    }

    public int getBooks_id() {
        return books_id;
    }

    public void setBooks_id(int books_id) {
        this.books_id = books_id;
    }

    public String getBooks_name() {
        return books_name;
    }

    public void setBooks_name(String books_name) {
        this.books_name = books_name;
    }

    public String getBooks_msg() {
        return books_msg;
    }

    public void setBooks_msg(String books_msg) {
        this.books_msg = books_msg;
    }

    public String getBooks_no() { return books_no; }

    public void setBooks_no(String books_no) { this.books_no = books_no; }

    public int getBooks_stock() {
        return books_stock;
    }

    public void setBooks_stock(int books_stock) {
        this.books_stock = books_stock;
    }

    @Override
    public String toString() {
        return "Books{" +
                "books_id=" + books_id +
                ", books_no='" + books_no + '\'' +
                ", books_name='" + books_name + '\'' +
                ", books_msg='" + books_msg + '\'' +
                ", books_stock=" + books_stock +
                '}';
    }

}
