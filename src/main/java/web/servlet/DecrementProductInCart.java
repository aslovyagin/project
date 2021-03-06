package web.servlet;

import service.CartService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/decrementProduct")
public class DecrementProductInCart extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int productId = Integer.valueOf(request.getParameter("productId"));
        String login = (String) request.getSession().getAttribute("login");

        CartService.decrementProduct(login, productId);
        response.sendRedirect("/cart");
    }
}
