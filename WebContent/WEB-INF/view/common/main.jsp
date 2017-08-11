<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="common_head.jsp" />
<div class="jumbotron text-center">
	<h1>Grade Management System</h1>
</div>
<div class="container">
	<div class="row">
		<div class="col-sm-4">
			<h3>학생관리</h3>
			<ul class="list-group" >
				<li class="list-group-item"><a onclick="moveTo('member','add')">학생정보 추가</a></li>
				<li class="list-group-item"><a onclick="moveTo('member','list')">학생정보 목록</a></li>
				<li class="list-group-item"><a onclick="moveTo('member','search')">학생 상세정보</a></li>
				<li class="list-group-item"><a onclick="moveTo('member','update')">학생정보 수정</a></li>
				<li class="list-group-item"><a onclick="deleteTarget('member')">학생정보 삭제</a></li>
				
			</ul>
		</div>
		<div class="col-sm-4">
			<h3>성적관리</h3>
			<ul  class="list-group">
				<li class="list-group-item"><a onclick="moveTo('grade','add')">성적 입력</a></li>
				<li class="list-group-item"><a onclick="moveTo('grade','list')">성적 목록</a></li>
				<li class="list-group-item"><a onclick="moveTo('grade','detail')">성적 상세</a></li>
				<li class="list-group-item"><a onclick="moveTo('grade','update')">성적 수정</a></li>
				<li class="list-group-item"><a onclick="deleteTarget('grade')">성적 삭제</a></li>
			</ul>
		</div>
		<div class="col-sm-4">
			<h3>게시판관리</h3>
			<ul class="list-group">
				<li class="list-group-item"><a onclick="moveTo('board','write')">게시글 쓰기</a></li>
				<li class="list-group-item"><a onclick="moveTo('board','list')">게시글 목록</a></li>
				<li class="list-group-item"><a onclick="moveTo('board','detail')">게시글 내용</a></li>
				<li class="list-group-item"><a onclick="moveTo('board','update')">게시글 수정</a></li>
				<li class="list-group-item"><a onclick="deleteTarget('board')">게시글 삭제</a></li>
			</ul>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp" />
<script>
	function moveTo(var1, var2){
		location.href="${ctx}/"+var1+".do?action=move&page="+var1+"_"+var2;

	}
	function deleteTarget(var1){
		window.prompt(var1+" ID?","");
	}
		
</script>