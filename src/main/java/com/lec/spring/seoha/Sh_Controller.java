package com.lec.spring.seoha;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
@RequestMapping("/icpage")
public class Sh_Controller {
	
	@RequestMapping("/index")
	public String list(Model model) {
		
		return "icpage/index";
	}
	
	
	@RequestMapping("/blog")
	public String blog(Model model) {
		
		return "icpage/blog";
	}
	
	@RequestMapping("/blog1")
	public String blog1(Model model) {
		
		return "icpage/blog1";
	}
	@RequestMapping("/blog3")
	public String blog3(Model model) {
		
		return "icpage/blog3";
	}
}
