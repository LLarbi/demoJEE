package com.example.demojee.servlet;

import com.example.demojee.dao.DaoFactory;
import com.example.demojee.dao.PastryDao;
import com.example.demojee.dao.entity.Pastry;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/pastries")
public class PastryListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String search = req.getParameter("search");
        PastryDao dao = DaoFactory.getPastryDao();
        List<Pastry> pastryList;

        if ( search != null ) {
            pastryList = dao.getByName(search);
        } else {
            pastryList = dao.getAll();
        }

        req.setAttribute("pastries", pastryList);

        req.getRequestDispatcher("/WEB-INF/pastry-list.jsp").forward(req, resp);
    }


}
