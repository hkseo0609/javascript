<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>L O G I N</title>
<link rel="stylesheet" href="${ctx}/resources/css/member.css" />
</head>
<body>
<div id="wrapper">
<header>
<h1 class="gms-h1">ADMIN LOGIN</h1>
</header>
<hr /><br />
	<div id="image" class="gms-image"><a href="${ctx}/index.jsp"><img src="${ctx}/resources/img/login.gif" width="380px" height="380px" alt="" /></a></div><br />
		<form id="login_form" name="login_form" class="form-edit" >
		<fieldset>
		<legend>로그인</legend>
			<span class="login-span">ID</span>
			<input type="text" id="login_id" name="login_id" /><br />
			<label>PASSWORD</label><input type="password" id="login_pwd" name="login_pwd"/><br />
			<mark style="font-size: 13px"> *ID는 숫자 포함 8글자 이내*</mark><br />
			<input type="submit" value="LOING" onclick="javascript:loginAlert()" class="submit-pink" >
			<input type="submit" value="CANCLE" class="submit-blue">
			<input type="hidden" name="action" value="login" />
			<input type="hidden" name="page" value="main" />
		</fieldset>
		</form>
</div>
<br /><hr />
<footer>
  <div>
  <p>Posted by: Seo HeeKyoung</p>
  <p>Contact information: <a href="mailto:someone@example.com">
  someone@example.com</a>.</p>
  <a href="${ctx}/jdbc_test.jsp">DB연결 테스트</a>
  </div>
</footer>
<script>
	function loginAlert(){
		var input_id = document.getElementById("login_id").value;
		var input_pwd = document.getElementById("login_pwd").value;
		if(input_id===""){
			alert("id를 입력해 주세요");
			return false;
		}
		if(input_pwd===""){
			alert("pass를 입력해 주세요");
			return false;
			
		}
		var form = document.getElementById('login_form');
		form.action="${ctx}/common.do";
		form.method="post";
		return true;
	}
	
</script>
</body>
</html>
