package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AdDetailsServlet", value = "/ad-details")
public class AdDetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        System.out.println("addId is: " + id);
        request.setAttribute("ad", DaoFactory.getAdsDao().getById(Long.parseLong(id)));
        //get user from userId
        String userId = request.getParameter("userId");
        System.out.println("userId is: " + userId);
        request.setAttribute("user", DaoFactory.getUsersDao().getUserById(Long.parseLong(userId)));

        request.getRequestDispatcher("/WEB-INF/ads/adDetails.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
