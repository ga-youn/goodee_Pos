package com.goodeecoffee.gc.staff.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.goodeecoffee.gc.staff.dto.StaffDTO;

@Repository("memberDAO")
public class StaffDAO implements IStaffDAO{

	@Inject
    SqlSession sqlSession;

	@Override
	public String staffLoginCheck(StaffDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.staffLoginCheck", memberDTO);
	}

}
