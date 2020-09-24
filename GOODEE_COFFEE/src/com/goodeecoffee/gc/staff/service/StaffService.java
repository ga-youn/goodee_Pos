package com.goodeecoffee.gc.staff.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.goodeecoffee.gc.staff.dao.StaffDAO;
import com.goodeecoffee.gc.staff.dto.StaffDTO;

@Service("memberService")
public class StaffService implements IStaffService{
	
	@Inject
	StaffDAO memberDAO;

	@Override
	public String staffLoginCheck(StaffDTO memberDTO) {
		// TODO Auto-generated method stub
		return memberDAO.staffLoginCheck(memberDTO);
	}
	
}
