package com.musicstore.controller;

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
    	Product product = productDao.getAllProducts().get(0);
    	model.addAttribute(product);
    	
    	return "productList";
    }
}
