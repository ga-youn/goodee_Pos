package com.goodeecoffee.gc.member.service;

import java.util.List;
import java.util.Map;

public interface IMemberService {

	List<Map<String, Object>> member(Map<String, Object> map);

	List<Map<String, Object>> memberDESC(Map<String, Object> map);


}
