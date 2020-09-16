package com.goodeecoffee.gc.member.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.goodeecoffee.gc.member.dao.IMemberDAO;

@Service("memberService")
public class MemberService implements IMemberService{
	
	@Resource(name="memberDAO")
	private IMemberDAO memberDAO;

	@Override
	public List<Map<String, Object>> member(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return memberDAO.member(map);
	}

	@Override
	public List<Map<String, Object>> memberDESC(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return memberDAO.memberDESC(map);
	}

	

}
