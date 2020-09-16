package com.goodeecoffee.gc.staff.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StaffController {
	
	@RequestMapping(value="register11", method = RequestMethod.GET)
	public String register11() {
		
		return "register11";
	}
	
	@RequestMapping(value="alterInto11", method = RequestMethod.GET)
	public String alterInto11() {
		
		return "alterInto11";
	}
	
	@RequestMapping(value="withdraw11", method = RequestMethod.GET)
	public String withdraw11() {
		
		return "withdraw11";
	}
	
}
