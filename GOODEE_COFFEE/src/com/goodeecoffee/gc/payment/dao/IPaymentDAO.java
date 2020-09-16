package com.goodeecoffee.gc.payment.dao;

import java.util.List;
import java.util.Map;

public interface IPaymentDAO {

	List<Map<String, Object>> coffeeMenu(Map<String, Object> map);
	
	List<Map<String, Object>> beverageMenu(Map<String, Object> map);
	
	List<Map<String, Object>> teaMenu(Map<String, Object> map);
	
	List<Map<String, Object>> adeMenu(Map<String, Object> map);
	
	List<Map<String, Object>> shakeMenu(Map<String, Object> map);
	
	List<Map<String, Object>> bakeryMenu(Map<String, Object> map);
}
