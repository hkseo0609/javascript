<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="member_head.jsp" />
<jsp:include page="../common/common_head.jsp" />
	<header>
	<h1 class="gms-h1">MEMBER ADD</h1>
	</header>
	<hr /><br />
	<div id="image" class="gms-image"><a href="${ctx}/index.jsp"><img src="${ctx}/img/join.jpg" alt=""/></a></div><br />
		<form id="join_form" action="" class="form-edit">
			<fieldset>
			<legend>회원가입</legend>
			<span class="join-span">ID</span>
			<input name="id" type="text" placeholder="아이디" /><br />
			
			<label>PASSWORD</label>
			<input name="pwd" type="password" placeholder="비밀번호"/><br />
			
			<span class="join-span">NAME</span>
			<input name="name" type="text" placeholder="이름"/><br />
			
			<span class="join-span">birthday</span>
			<input name="birthday" type="text"/><br />
			
			<span class="join-span">email</span>
			<input type="email" name="email" /><br />
			
			<input name="gender" type="radio" value="male">남자
			<input name="gender" type="radio" value="female">여자<br />
			<h4>전공</h4>
			<select name="major">
				<option value="computer" selected>컴퓨터공학과</option>
				<option value="economics">경제학</option>
				<option value="tourism">관광학</option>
				<option value="art">미술학</option>
			</select><br />
			<h4>수강과목</h4>
			<input type="checkbox" name="shbject" value="java" checked/>java <br />
			<input type="checkbox" name="shbject" value="C" checked/>C<br />
			<input type="checkbox" name="shbject" value="html" />html<br />
			<input type="checkbox" name="shbject" value="css" />css<br />
			<input type="checkbox" name="shbject" value="javascript" />javascript<br />
			<input type="checkbox" name="shbject" value="sql" />sql<br />
			<input type="checkbox" name="shbject" value="python" />python<br /><br />
			<input type="submit" value="등록" class="submit-pink">
			<input type="reset" value="취소" class="submit-blue">
			</fieldset>
		</form>

<jsp:include page="../common/footer.jsp" />