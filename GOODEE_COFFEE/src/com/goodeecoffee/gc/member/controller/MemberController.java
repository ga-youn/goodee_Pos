package com.goodeecoffee.gc.member.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.goodeecoffee.gc.member.service.IMemberService;

@Controller
public class MemberController {
	
	@Resource(name="memberService")
	private IMemberService memberService;

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
	
	@RequestMapping(value="test", method=RequestMethod.GET)
	public String test(Map<String, Object> map, Model model) {
		
		List<Map<String, Object>> member = new ArrayList<Map<String, Object>>();
		member = memberService.member(map);
		model.addAttribute("test", member);
		
		List<Map<String, Object>> memberDESC = new ArrayList<Map<String, Object>>();
		memberDESC = memberService.memberDESC(map);
		model.addAttribute("testDESC", memberDESC);
		return "test";
	}
	
}
