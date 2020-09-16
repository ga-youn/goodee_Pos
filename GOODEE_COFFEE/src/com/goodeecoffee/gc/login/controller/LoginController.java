package com.goodeecoffee.gc.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	@RequestMapping(value="id_find", method = RequestMethod.GET)
	public String idFind() {
		
		return "id_find";
	}
	
	@RequestMapping(value="pw_find", method = RequestMethod.GET)
	public String pwdFind() {
		
		return "pw_find";
	}
}
