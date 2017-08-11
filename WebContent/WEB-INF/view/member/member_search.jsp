<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="member_head.jsp" />
<jsp:include page="../common/common_head.jsp" />
<header>
<h1 class="gms-h1">MEMBER SEARCH</h1>	
</header>
<hr /><br />
<form id="member_search" action="${ctx}/member/service_search.jsp" method="get">
	검색조건  <select name ="option"> 
	<option value="id">ID</option>
	<option value="name" >이름</option>
	</select>
	<input type="text" name="search">
	<input type="submit" value="검색" />
</form>
<jsp:include page="../common/footer.jsp" />