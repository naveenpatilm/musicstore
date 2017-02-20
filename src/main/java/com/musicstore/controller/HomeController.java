package com.musicstore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.musicstore.dao.ProductDao;
import com.musicstore.model.Product;

@Controller
public class HomeController {

	@Autowired
	private ProductDao productDao;

	@RequestMapping("/")
	public String home() {
		return "home";
	}

	@RequestMapping("/productList")
	public String getProducts(Model model) {
		List<Product> products = productDao.getAllProducts();
		model.addAttribute("products", products);

		return "productList";
	}

	@RequestMapping("/productList/viewProduct")
	public String viewProduct() {
		return "viewProduct";
	}
}
