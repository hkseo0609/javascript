<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="member_head.jsp" />
<jsp:include page="../common/common_head.jsp" />
	<header>
	<h1 class="gms-h1">MEMBER DETAIL</h1>
	</header>
	<a href="${ctx}/index.jsp" class="gms-gomain">메인으로 가기</a><br />
	<hr /><br />
	<h1 class="gms-text-center">회원 상세정보</h1>
	<table id="detail-tab">
		<tr>
			<th>아이디</th>
			<td></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td></td>
		</tr>
		<tr>
			<th>이름</th>
			<td></td>
		</tr>
		<tr>
			<th>나이</th>
			<td></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td></td>
		</tr>
		<tr>
			<th>성별</th>
			<td></td>
		</tr>
		<tr>
			<th>전공</th>
			<td></td>
		</tr>
		<tr>
			<th>수강과목</th>
			<td></td>
		</tr>
	</table>
	
<jsp:include page="../common/footer.jsp" />