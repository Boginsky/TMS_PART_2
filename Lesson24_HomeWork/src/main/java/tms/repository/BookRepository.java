package tms.repository;


import tms.entity.Book;

import java.util.ArrayList;
import java.util.List;

public class BookRepository {

    private static final BookRepository INSTANCE = new BookRepository();

    public static BookRepository getInstance(){
        return INSTANCE;
    }

    private final List<Book> books = new ArrayList<>();

    private BookRepository(){
        books.add(new Book("Politics of Opportunism","R P N Singh",400));
        books.add(new Book("Malayalam poetry","Akkitham Achuthan Namboodri",500));
        books.add(new Book("The Testaments","Margaret Atwood",600));
        books.add(new Book("Celestial Bodies","Jokha Alharthi",700));
        books.add(new Book("Cheque book","Vasdev Mohi",800));
    }

    public List<Book> getBooks(){
        return this.books;
    }

    public void addBook(Book book){
        books.add(book);
    }

    public void removePhone(String nameOfBook){
        books.removeIf(x -> x.getName().equalsIgnoreCase(nameOfBook));
    }



}
