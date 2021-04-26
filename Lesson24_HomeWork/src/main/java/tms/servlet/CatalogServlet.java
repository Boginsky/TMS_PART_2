package tms.servlet;

import tms.repository.BookRepository;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name ="catalog", urlPatterns = "/catalog")
public class CatalogServlet extends HttpServlet {

    private final BookRepository bookRepository = BookRepository.getInstance();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("books",bookRepository.getBooks());
        req.getRequestDispatcher("WEB-INF/catalog.jsp").forward(req,resp);
        ServletContext servletContext = getServletContext();
        servletContext.setAttribute("books", bookRepository.getBooks());
    }
}
