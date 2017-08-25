package com.gms.web.proxy;

import javax.servlet.http.HttpServletRequest;

//핸들러 : 이벤트를 처리하는 기능
public class PageHandler extends PaginationProxy{

	public PageHandler(HttpServletRequest request) {
		super(request);
	}
	
	//int를 객체로 바꿔서 사용
	public static int[] attr(PaginationProxy pxy){
		int[] result = new int[2];
		int startRow = 0, endRow = 0;
		if (pxy.getPageNumber() <= pxy.getTheNumberOfRows() /pxy.getPageSize()+1){
			if(pxy.getPageNumber() ==1){
				startRow = 1;
				endRow = pxy.getPageSize();
			}else {
				startRow = (pxy.getPageNumber() - 1) * pxy.getPageSize()+1;
				endRow = pxy.getPageNumber() * pxy.getPageSize();
			}
		}
		result[0] = startRow;
		result[1] = endRow;
		return result;
	}

}
