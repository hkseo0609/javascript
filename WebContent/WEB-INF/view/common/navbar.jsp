<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${css}/member.css" />
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a onclick="moveToNa('common','main')"><span class="glyphicon glyphicon-home"></span>&nbsp;Home</a></li>
      <li class="dropdown">
      	<a href="#" class="dropdown-toggle"
      	data-toggle="dropdown" role="button"
      	aria-haspopup="true"
      	aria-expanded="false">학생관리<span class="caret"></span></a>
      	<ul class="dropdown-menu">
      	<li><a onclick="moveToNa('member','member_add')">학생 추가</a></li>
      	<li><a onclick="moveToNa('member','member_list')">학생 목록</a></li>
      	<li><a onclick="moveToNa('member','member_search')">학생 조회</a></li>
      	<li role="separator" class="divider"></li>
      	<li><a onclick="deleteTarget('member')">학생 삭제</a></li>
      	</ul>
   	 </li>
   	 <li class="dropdown">
      	<a href="#" class="dropdown-toggle"
      	data-toggle="dropdown" role="button"
      	aria-haspopup="true"
      	aria-expanded="false">성적관리<span class="caret"></span></a>
      	<ul class="dropdown-menu">
      	<li><a onclick="moveToNa('grade','grade_add')">성적 추가</a></li>
      	<li><a onclick="moveToNa('grade','grade_detail')">성적 상제</a></li>
      	<li><a onclick="moveToNa('grade','grade_list')">성적 목록</a></li>
      	<li role="separator" class="divider"></li>
      	<li><a onclick="deleteTarget('grade')">성적 삭제</a></li>
      	</ul>
   	 </li>
   	 <li class="dropdown">
      	<a href="#" class="dropdown-toggle"
      	data-toggle="dropdown" role="button"
      	aria-haspopup="true"
      	aria-expanded="false">게시판관리<span class="caret"></span></a>
      	<ul class="dropdown-menu">
      	<li><a onclick="moveToNa('board','board_write')">게시글 추가</a></li>
      	<li><a onclick="moveToNa('board','board_list')">게시글 목록</a></li>
      	<li><a onclick="moveToNa('board','board_detail')">게시글 조회</a></li>
      	<li role="separator" class="divider"></li>
      	<li><a onclick="deleteTarget('board')">게시글 삭제</a></li>
      	</ul>
   	 </li>
   	 </ul>
    <span class="login-d">${sessionScope.user.name}&nbsp;<a id="logout" onclick="logout()">로그아웃</a> </span>
  </div>
</nav>
  <script>
 	function logout(){
 		location.href="${ctx}/common.do?action=logout&page=index";
 	}
 	function moveToNa(var1, var2){
		location.href="${ctx}/"+var1+".do?action=move&page="+var2;
	}
 	function deleteTarget(var1){
		window.prompt(var1+" ID?","");
	}
  </script>