package com.Shopping.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.Shopping.dto.Product;

public class ProductDao {
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("sathish");
	EntityManager manager = factory.createEntityManager();

	public Product saveProduct(Product product) {
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		manager.persist(product);
		transaction.commit();
		return product;
	}

	public Product updateProduct(Product product) {
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		manager.merge(product);
		transaction.commit();
		return product;
	}

	public List<Product> searchProductByName(String name) {
		String query = "select p from Product p where p.name=?1";
		Query q = manager.createQuery(query);
		q.setParameter(1, name);
		List<Product> products = q.getResultList();
		return products;
	}

	public List<Product> searchProductBycolor(String color) {
		String query = "select p from Product p where p.color=?1";
		Query q = manager.createQuery(query);
		q.setParameter(1, color);
		List<Product> products = q.getResultList();
		return products;
	}

	public void deleteProduct(int id) {
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		Product product = manager.find(Product.class, id);
		if (product != null) {
			manager.remove(product);
		}
		transaction.commit();

	}

	public List<Product> getAllProducts() {
		String query = "select p from Product p ";
		Query q = manager.createQuery(query);
		List<Product> products = q.getResultList();
		return products;
	}
}
