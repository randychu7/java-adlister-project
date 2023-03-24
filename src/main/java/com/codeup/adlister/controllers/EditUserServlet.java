package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditUserServlet", value = "/user-profile")
public class EditUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/userEditProfile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        if(request.getParameter("user.id") != null){
            String id = request.getParameter("user.id");
            DaoFactory.getUsersDao().delete(Long.parseLong(id));
            request.getSession().removeAttribute("user");
            request.getSession().invalidate();
            response.sendRedirect("/register");

        }else if(request.getParameter("submit") != null){

            long userId = Long.parseLong(request.getParameter("id"));
            String password = request.getParameter("password");
            String username = request.getParameter("username");
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            String phoneNumber = request.getParameter("phone.number");
            String email = request.getParameter("email");

            DaoFactory.getUsersDao().update(username, firstname, lastname, phoneNumber, email, password, userId);
            User user = (User) DaoFactory.getUsersDao().getUserId(userId);
            request.getSession().setAttribute("user", user);
            response.sendRedirect("/profile");
        }

    }
}
