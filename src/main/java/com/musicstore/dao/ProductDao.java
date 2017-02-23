package com.musicstore.dao;

import java.util.List;

import com.musicstore.model.Product;

public interface ProductDao {
	void addProduct(Product product);
	Product getProductById(String productId);
	List<Product> getAllProducts();
	void deleteProduct(String productId);

}
