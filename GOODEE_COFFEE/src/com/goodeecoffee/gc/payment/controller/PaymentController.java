package com.goodeecoffee.gc.payment.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.goodeecoffee.gc.payment.service.IPaymentService;

@Controller
public class PaymentController {
	
	@Resource(name="paymentService")
	private IPaymentService paymentService;

	@RequestMapping(value="/payment", method=RequestMethod.GET)
	public String payment(Map<String, Object> map, Model model) {
		
		List<Map<String, Object>> coffeeMenu = new ArrayList<Map<String, Object>>();
		coffeeMenu = paymentService.coffeeMenu(map);
		model.addAttribute("coffeeMenu", coffeeMenu);
		
		List<Map<String, Object>> beverageMenu = new ArrayList<Map<String, Object>>();
		beverageMenu = paymentService.beverageMenu(map);
		model.addAttribute("beverageMenu", beverageMenu);
		
		List<Map<String, Object>> teaMenu = new ArrayList<Map<String, Object>>();
		teaMenu = paymentService.teaMenu(map);
		model.addAttribute("teaMenu", teaMenu);
		
		List<Map<String, Object>> adeMenu = new ArrayList<Map<String, Object>>();
		adeMenu = paymentService.adeMenu(map);
		model.addAttribute("adeMenu", adeMenu);
		
		List<Map<String, Object>> shakeMenu = new ArrayList<Map<String, Object>>();
		shakeMenu = paymentService.shakeMenu(map);
		model.addAttribute("shakeMenu", shakeMenu);
		
		List<Map<String, Object>> bakeryMenu = new ArrayList<Map<String, Object>>();
		bakeryMenu = paymentService.bakeryMenu(map);
		model.addAttribute("bakeryMenu", bakeryMenu);
		
		return "payment";
	}
	
}
