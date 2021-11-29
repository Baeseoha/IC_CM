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
}
