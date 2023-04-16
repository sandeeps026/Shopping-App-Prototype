package com.Shopping.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import com.Shopping.dao.ProductDao;
import com.Shopping.dto.Product;

import antlr.collections.List;

@WebServlet(value = "/sp")
public class searchByProduct extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String prod = req.getParameter("pn");

		Product product = new Product();

		ProductDao dao = new ProductDao();
		java.util.List<Product> pl = dao.searchProductByName(prod);
		PrintWriter writer = resp.getWriter();
		writer.write("<html><body>");
		for (Product p : pl) {
			writer.write("<h1>" + p.getName() + "</h1>");
		}
		writer.write("</body></html>");

	}
}
