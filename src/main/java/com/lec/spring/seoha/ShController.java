package com.lec.spring.seoha;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/icpage")
public class ShController {


	@RequestMapping("/index")
	public String index(Model model) {
//		System.out.println("good");
		return "icpage/index";
	}

	@RequestMapping("/signin")
	public String test(Model model) {
//		System.out.println("good");
		return "icpage/signin";
	}

	@RequestMapping("/join")
	public String join(Model model) {
//		System.out.println("good");
		return "icpage/join";
	}
	
	@RequestMapping("/myPage")
	public String myPage(Model model) {
//		System.out.println("good");
		return "icpage/myPage";
	}

	
}
