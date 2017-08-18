package com.gms.web.dao;

import java.util.List;
import java.util.Map;

import com.gms.web.domain.MemberBean;

public interface MemberDAO {
	public List<?> selectAll();
	public String count();
	public String insert(Map<?,?> map);
	public MemberBean selectByid(String id);
	public List<?> selectByName(String name);
	public String update(MemberBean bean);
	public String delete(String id);

}
