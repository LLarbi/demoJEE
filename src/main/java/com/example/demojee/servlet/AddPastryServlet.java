package com.example.demojee.servlet;

import com.example.demojee.dao.Dao;
import com.example.demojee.dao.DaoFactory;
import com.example.demojee.dao.entity.Pastry;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/pastries/add")
public class AddPastryServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/add-pastry.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws IOException {
        String name = request.getParameter("pastryName");
        String description = request.getParameter("pastryDescription");
        String image = request.getParameter("pastryImage");

        Pastry pastry = new Pastry(name, description, image);
        Dao<Pastry> pastryDao = DaoFactory.getPastryDao();
        pastryDao.save(pastry);

        resp.sendRedirect(request.getContextPath() + "/pastries");
    }
}
