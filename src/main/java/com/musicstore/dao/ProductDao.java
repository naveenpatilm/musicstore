package com.musicstore.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.musicstore.model.Product;

@Component
public class ProductDao {
	private List<Product> productList;

	public List<Product> getAllProducts() {
		Product product = new Product();
		product.setProductName("4 Hour Work Week");
		product.setProductCategory("Book");
		product.setProductCondition("new");
		product.setProductManufacturer("ferris");
		product.setProductPrice(300);
		product.setUnitInStock(109);

		Product product2 = new Product();
		product2.setProductName("Richie Rich");
		product2.setProductCategory("Book");
		product2.setProductCondition("new");
		product2.setProductManufacturer("unknown");
		product2.setProductPrice(99);
		product2.setUnitInStock(3);

		productList = new ArrayList<Product>();
		productList.add(product);
		productList.add(product2);

		return productList;
	}
}
