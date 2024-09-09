package com.kh.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ListContorller {
	@GetMapping("/list")
	public String getListJsp() {
		// return 에 listExample.jsp . jsp로 끝나는 파일 중에
		return "listExample";
	}
}
