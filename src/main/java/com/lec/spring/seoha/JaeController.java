package com.lec.spring.seoha;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/icpage")
public class JaeController {
	
	@RequestMapping("/javawrite")
	public String javawrite(Model model) {
		System.out.println("성공");
		return "icpage/javawrite";
	}
	
	@RequestMapping("/java")
	public String java(Model model) {
		
		return "icpage/java";
	}

}
