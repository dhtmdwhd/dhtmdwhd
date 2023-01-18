package com.example.test.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.test.login.service.UserService;

@Controller
public class ShopperController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/login")
	public String mainPage() {
		return "login";
	}
}
