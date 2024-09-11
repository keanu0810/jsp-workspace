package com.kh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.kh.entity.Hamburger;
import com.kh.serviec.HService;

import java.util.List;
@Controller
public class HController {

	@Autowired
	private HService hService;
	@GetMapping("/api/all")
	public String getAll(Model m) {
		List<Hamburger> h = hService.getAll();
		m.addAttribute("ham", h);
		return "hamburger";
	}
	@PostMapping("/api/add")
	public String addHamburger(Hamburger h) {
		hService.saveHamburger(h);
		return "redirect:/api/all"; //redirect  다시 불러올 api주소를 작성
	}
}
