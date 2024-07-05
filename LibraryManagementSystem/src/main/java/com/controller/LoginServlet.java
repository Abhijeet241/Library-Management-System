package com.controller;

import java.io.IOException;

import com.dao.UserDAO;
import com.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet{

	 private static final long serialVersionUID = 1L;

	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        String email = request.getParameter("email");
	        String password = request.getParameter("password");

	        UserDAO userDAO = new UserDAO();
	        User user = userDAO.validateUser(email, password);

	        if (user != null) {
	            if ("librarian".equals(user.getRole())) {
	                request.getSession().setAttribute("user", user);
	                response.sendRedirect("librarian_dashboard.jsp");
	            } else {
	                request.getSession().setAttribute("user", user);
	                response.sendRedirect("student_dashboard.jsp");
	            }
	        } else {
	            request.setAttribute("errorMessage", "Invalid email or password");
	            request.getRequestDispatcher("login.jsp").forward(request, response);
	        }
	    }
}
