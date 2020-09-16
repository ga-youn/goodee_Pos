package com.goodeecoffee.gc.payment.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.goodeecoffee.gc.member.dao.IMemberDAO;
import com.goodeecoffee.gc.payment.dao.IPaymentDAO;

@Service("paymentService")
public class PaymentService implements IPaymentService{
	
	@Resource(name="paymentDAO")
	private IPaymentDAO paymentDAO;

	@Override
	public List<Map<String, Object>> coffeeMenu(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return paymentDAO.coffeeMenu(map);
	}

	@Override
	public List<Map<String, Object>> beverageMenu(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return paymentDAO.beverageMenu(map);
	}

	@Override
	public List<Map<String, Object>> teaMenu(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return paymentDAO.teaMenu(map);
	}

	@Override
	public List<Map<String, Object>> adeMenu(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return paymentDAO.adeMenu(map);
	}

	@Override
	public List<Map<String, Object>> shakeMenu(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return paymentDAO.shakeMenu(map);
	}

	@Override
	public List<Map<String, Object>> bakeryMenu(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return paymentDAO.bakeryMenu(map);
	}

}
