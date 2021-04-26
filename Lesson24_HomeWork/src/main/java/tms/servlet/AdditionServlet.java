package tms.servlet;

import tms.entity.Book;
import tms.repository.BookRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/addition")
public class AdditionServlet  extends HttpServlet {

    private BookRepository bookRepository = BookRepository.getInstance();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("WEB-INF/new-book.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String bookName = req.getParameter("name");
        String bookAuthor = req.getParameter("author");
        Double bookPrice = Double.parseDouble(req.getParameter("price"));
        Book book = new Book(bookName,bookAuthor,bookPrice);
        bookRepository.addBook(book);
        resp.sendRedirect("catalog");
    }
}
