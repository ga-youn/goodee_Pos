package com.goodeecoffee.gc.salesList.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SalesListController {

	@RequestMapping(value="/salesList", method=RequestMethod.GET)
	public String salesList() {
		
		return "salesList";
	}
	
}
