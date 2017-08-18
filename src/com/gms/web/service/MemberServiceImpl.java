package com.gms.web.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.gms.web.dao.MemberDAO;
import com.gms.web.dao.MemberDAOImpl;
import com.gms.web.domain.MajorBean;
import com.gms.web.domain.MemberBean;

public class MemberServiceImpl implements MemberService {
	public static MemberServiceImpl instance = new MemberServiceImpl();
	
	public static MemberServiceImpl getInstance() {
		return instance;
	}
	private MemberServiceImpl() {
		
	}
	@Override
	public String addMember(Map<String, Object> map) {
		System.out.println("memberservice 진입");
		MemberBean m = (MemberBean)map.get("member");
		System.out.println("넘어온 값 :"+m.toString());
		@SuppressWarnings("unchecked")
		List<MajorBean> list = (List<MajorBean>)map.get("major");
		System.out.println("넘어온 값 수강과목:"+list);
		String rs = MemberDAOImpl.getInstance().insert(map);
		String page = "";
		page = (Integer.parseInt(rs)==1)? "main" : "join";
		return page;
	}

	@Override
	public String countMembers() {
		return String.valueOf(MemberDAOImpl.getInstance().count());
	}
	
	@Override
	public List<?> getMembers() {
		return MemberDAOImpl.getInstance().selectAll();
	}
	
	@Override
	public MemberBean findByid(String id) {
		return MemberDAOImpl.getInstance().selectByid(id);
	}
	
	@Override
	public List<MemberBean> findName(String name) {
		return MemberDAOImpl.getInstance().selectByName(name);
	}
	
	@Override
	public String modfiy(MemberBean bean) {
		String msg = "";
		String rs = MemberDAOImpl.getInstance().update(bean);
		msg = (Integer.parseInt(rs)==1)?msg="수정 성공":"수정 실패";
		return msg;
			
	}	
	@Override
	public String remove(String deleteId) {
		String msg = "";
		String rs = MemberDAOImpl.getInstance().delete(deleteId);
		msg = (Integer.parseInt(rs)==1)?msg="삭제 성공":"삭제 실패";
		return msg;
	}
	@Override
	public Map<String,Object> login(MemberBean bean) {
		Map<String,Object> map = new HashMap<>();
		MemberBean temp = findByid(bean.getId());
		String page = (temp!=null) ? (bean.getPwd().equals(temp.getPwd())) ? "main" : "login": "join";
		map.put("page", page);
		map.put("user", temp);
		return map;
	}
}
