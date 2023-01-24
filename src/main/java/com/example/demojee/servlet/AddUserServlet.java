package com.example.demojee.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(urlPatterns = "/add-user")
public class AddUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*PrintWriter pw = response.getWriter();
        pw.println("Welcome home");*/
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/add-user-form.jsp");
        rd.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        req.setAttribute("USER_ADDED_OK", true);
        RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/add-user-form.jsp");
        rd.forward(req, resp);
    }

}
