package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AdEditServlet", value = "/ad-edit")
public class AdEditServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }

        String adId = request.getParameter("id");
//        System.out.println(adId);
        request.setAttribute("ad", DaoFactory.getAdsDao().getById(Long.parseLong(adId)));
        request.getRequestDispatcher("/WEB-INF/ads/adEdit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long adId = Long.parseLong(request.getParameter("id"));
        //request parameter
               String title = request.getParameter("title");
               String model = request.getParameter("model");
               int year =  Integer.parseInt(request.getParameter("year"));
               int mileage = Integer.parseInt(request.getParameter("mileage"));
               String color = request.getParameter("color");
               String condition = request.getParameter("condition");
               String description = request.getParameter("description");
               String picture = request.getParameter("picture");
        //run dao factory update()
        DaoFactory.getAdsDao().update(title, model, year, mileage, color, condition, description, picture, adId);
//        response.sendRedirect("/ad-edit" + "?id=" + adId);
        response.sendRedirect("/profile");
    }
}
