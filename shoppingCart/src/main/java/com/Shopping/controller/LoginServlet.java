package com.Shopping.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(value = "/login")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String role = req.getParameter("r");
		RequestDispatcher dispatcher = null;
		if (role.equals("admin")) {
			dispatcher = req.getRequestDispatcher("admin.jsp");
			dispatcher.forward(req, resp);
		} else {
			dispatcher = req.getRequestDispatcher("user.jsp");
			dispatcher.forward(req, resp);
		}
	}
}
