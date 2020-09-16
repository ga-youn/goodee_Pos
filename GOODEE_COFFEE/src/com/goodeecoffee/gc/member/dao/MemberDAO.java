package com.goodeecoffee.gc.member.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("memberDAO")
public class MemberDAO implements IMemberDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<Map<String, Object>> member(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.list", map);
	}

	@Override
	public List<Map<String, Object>> memberDESC(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.listDESC",map);
	}


}
