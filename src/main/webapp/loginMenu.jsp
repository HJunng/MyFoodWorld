<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<div class="wrap">
	<div class="menubar">	
		<div class="intro_bg">
			<div class="header">
				<h1 id="title">MY Food World</h1>
			</div>
		</div>
		<div class="navbar">
		<%
			String user_id = (String) session.getAttribute("name");
		%>
			<h4 class="user"><%=user_id %>님. 반갑습니다!</h4>
			<ul class="nav justify-content-around ">
				<li class="nav-item"><a class="menuli" href="#">HOME</a></li>
				<li class="nav-item"><a class="menuli" href="#">MAP</a></li>
				<li class="nav-item"><a class="menuli" href="#">YOUR LIST</a></li>
				<li class="nav-item"><a class="menuli" href="#">DELIVERY</a></li>
			</ul>
		</div>
	</div>
</div>