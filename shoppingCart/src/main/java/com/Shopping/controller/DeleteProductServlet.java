package com.Shopping.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Shopping.dao.ProductDao;
import com.Shopping.dto.Product;
@WebServlet("/delete")
public class DeleteProductServlet extends HttpServlet{
      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	int id = Integer.parseInt(req.getParameter("id"));
    	Product product = new Product();
		ProductDao dao = new ProductDao();
		dao.deleteProduct(id);
		PrintWriter writer = resp.getWriter();
		writer.write("<html><body><h1>DELETE SUCCESSFULLY....</h1></body></html>");
    }
}
