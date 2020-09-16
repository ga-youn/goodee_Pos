package com.goodeecoffee.gc.member.dao;

import java.util.List;
import java.util.Map;

public interface IMemberDAO {

	List<Map<String, Object>> member(Map<String, Object> map);

	List<Map<String, Object>> memberDESC(Map<String, Object> map);


}
