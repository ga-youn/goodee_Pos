package com.goodeecoffee.gc.admin.dto;

public class AdminDTO {

	private String userId;
	private String userPwd;
	private String name;
	
	public AdminDTO() {}

	public AdminDTO(String userId, String userPwd, String name) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.name = name;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
		
}
