package com.goodeecoffee.gc.payment.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("paymentDAO")
public class PaymentDAO implements IPaymentDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<Map<String, Object>> coffeeMenu(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.coffeeMenuList", map);
	}

	@Override
	public List<Map<String, Object>> beverageMenu(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.beverageMenuList", map);
	}

	@Override
	public List<Map<String, Object>> teaMenu(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.teaMenuList", map);
	}

	@Override
	public List<Map<String, Object>> adeMenu(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.adeMenuList", map);
	}

	@Override
	public List<Map<String, Object>> shakeMenu(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.shakeMenuList", map);
	}

	@Override
	public List<Map<String, Object>> bakeryMenu(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.bakeryMenuList", map);
	}
}
