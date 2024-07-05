package com.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LibrarianDashboardServlet extends HttpServlet{

	 private static final long serialVersionUID = 1L;

	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        // Add logic for librarian dashboard
	        request.getRequestDispatcher("librarian_dashboard.jsp").forward(request, response);
	    }
}
