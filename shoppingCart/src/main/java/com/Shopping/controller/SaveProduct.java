package com.Shopping.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Shopping.dao.ProductDao;
import com.Shopping.dto.Product;

@WebServlet("/save")
public class SaveProduct extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String gender = req.getParameter("gender");
		double price = Double.parseDouble(req.getParameter("price"));
		String currecny = req.getParameter("currency");
		int quantity = Integer.parseInt(req.getParameter("qnt"));
		String img = req.getParameter("img");
		String color = req.getParameter("color");

		Product product = new Product();
		product.setColor(color);
		product.setName(name);
		product.setQuantity(quantity);
		product.setGender(gender);
		product.setCurrency(currecny);
		product.setImg(img);
		product.setPrice(price);

		ProductDao dao = new ProductDao();
		dao.saveProduct(product);
	}
}
