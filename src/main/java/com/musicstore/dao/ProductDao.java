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
		
		productList = new ArrayList<Product>();
		productList.add(product);
		
		return productList;
	}
}
