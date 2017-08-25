package com.gms.web.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gms.web.constants.Action;
import com.gms.web.domain.MajorBean;
import com.gms.web.domain.MemberBean;
import com.gms.web.domain.StudentBean;
import com.gms.web.proxy.BlockHandler;
import com.gms.web.proxy.PageHandler;
import com.gms.web.proxy.PaginationProxy;
import com.gms.web.service.MemberService;
import com.gms.web.service.MemberServiceImpl;
import com.gms.web.util.DispatcherServlet;
import com.gms.web.util.ParamsIterator;
import com.gms.web.util.Separator;

@WebServlet({"/member.do"})
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("member controller get 진입");
		Separator.init(request);
		MemberBean member = new MemberBean();
		MemberService service = MemberServiceImpl.getInstance();
		switch(request.getParameter(Action.CMD)){
		case Action.MOVE:
			DispatcherServlet.send(request, response);
			break;
		case Action.JOIN:
			System.out.println("join 시작");
			Map<?,?> map=ParamsIterator.execute(request);
			member.setId((String)map.get("id"));
			member.setPwd((String)map.get("pwd"));
			member.setName((String)map.get("name"));
			member.setSsn((String)map.get("ssn"));
			member.setEmail((String)map.get("email"));
			member.setSsn((String)map.get("birthday"));
			member.setPhone((String)map.get("phone"));
			//major는 여러 행을 입력해야함, for문
			
			String[] subject=((String)map.get("subject")).split(",");
			List<MajorBean> list = new ArrayList<>();
			MajorBean major = null;
			for(int i=0; i<subject.length;i++){
				major = new MajorBean();
				major.setMajorId(String.valueOf((int)((Math.random() * 9999) + 1000)));
				major.setId((String)map.get("id"));
				major.setTitle((String)map.get("name"));
				major.setSubjId(subject[i]);
				list.add(major);
			}
			Map<String, Object> tempMap=new HashMap<>();
			tempMap.put("member", member);
			tempMap.put("major", list);
			String page = service.addMember(tempMap);
			System.out.println("id"+map.get("id"));
			
			Separator.cmd.setDirectory("common");
			Separator.cmd.setPage(page);
			Separator.cmd.process();
			DispatcherServlet.send(request, response);
			break;
		case Action.LIST:
			
			System.out.println("list 진입");
			PaginationProxy pxy = new PaginationProxy(request);
			pxy.setPageSize(5);
			pxy.setBlockSize(5);
			pxy.setTheNumberOfRows(Integer.parseInt(service.countMembers()));
			pxy.setPageNumber(Integer.parseInt(request.getParameter("pageNum")));
			int[] arr = PageHandler.attr(pxy);
			int[] arr2 = BlockHandler.attr(pxy);
			pxy.execute(arr2,service.list(arr));
			DispatcherServlet.send(request, response);
			break;
		case Action.UPDATE:
			System.out.println("update 진입");
			System.out.println(request.getParameter("id"));
			service.modfiy(service.findByid(request.getParameter("id")));
			DispatcherServlet.send(request, response);
			break;
		case Action.DETAIL:
			System.out.println("detail 진입");
			service.findByid(request.getParameter("id"));
			DispatcherServlet.send(request, response);
			break;
		case Action.DELETE:
			System.out.println("delete 진입");
			String path = request.getContextPath();
			System.out.println(path);
			//request.setAttribute("student", service.remove(request.getParameter("id")));
			response.sendRedirect(path+"/member.do?action=list&page=member_list&pageNum=1");
			break;
		}	
	}
}

