package com.goodeecoffee.gc.staff.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.goodeecoffee.gc.staff.service.IStaffService;

@Controller
public class StaffController {
	
	@Resource(name="memberService")
	private IStaffService memberService;

	@RequestMapping(value="alterInto", method=RequestMethod.GET)
	public String alterInto() {
		
		return "alterInto";
	}
	
	@RequestMapping(value="register", method=RequestMethod.GET)
	public String register() {
		
		return "register";
	}
	
	@RequestMapping(value="withdraw", method=RequestMethod.GET)
	public String withdraw() {
		
		return "withdraw";
	}
	
}
