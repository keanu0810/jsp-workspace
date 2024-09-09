package com.kh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ArrayController {
	
	@GetMapping("/fruits")
	public String getFruits() {
		return "arrayExample";
	}
}
