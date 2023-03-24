package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ResultsServlet", value = "/results")
public class ResultsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/ads/results.jsp");
        dispatcher.forward(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String model = request.getParameter("model");
        String year = request.getParameter("year");
        String mileage = request.getParameter("mileage");
        String condition = request.getParameter("condition");
        String color = request.getParameter("color");

        request.setAttribute("model", model);
        request.setAttribute("year", year);
        request.setAttribute("mileage", mileage);
        request.setAttribute("condition", condition);
        request.setAttribute("color", color);

        List<Ad> allAds = DaoFactory.getAdsDao().all(); // retrieve all ads from a data source
        List<Ad> filteredAds = new ArrayList<>();

        for (Ad ad : allAds) {
            if ((model == null || model.isEmpty() || ad.getModel().equalsIgnoreCase(model))
                    && (year == null || year.isEmpty() || ad.getYear().equals(year))
                    && (mileage == null || mileage.isEmpty() || Integer.parseInt(ad.getMileage()) <= Integer.parseInt(mileage))
                    && (condition == null || condition.isEmpty() || ad.getCarCondition().equalsIgnoreCase(condition))
                    && (color == null || color.isEmpty() || ad.getColor().equalsIgnoreCase(color))) {
                filteredAds.add(ad);
            }
        }
        System.out.println(filteredAds);
        request.setAttribute("ads", filteredAds);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/ads/results.jsp");
        dispatcher.forward(request, response);
    }

}
