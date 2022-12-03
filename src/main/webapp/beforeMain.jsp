<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/style.css">
<link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Hi+Melody&display=swap" rel="stylesheet">

<title>FOOD WORLD MAP</title>
</head>
<body>
	<%@ include file="menu.jsp" %>
	<br><br><br>
	<div id="loginDiv">
		<div class="image">
			<a href="signUp.jsp" class="signUp"><img src="./resources/images/SignUp.png"/></a>
			<br>
			<h1 class="korean">회원가입</h1>
		</div>
		<div class="image">
			<a href="login1.jsp" class="locked"><img src="./resources/images/locked.png"/></a>
			<br>
			<h1 class="korean">로그인</h1>
		</div>
	</div>
	
	<br><br><br><hr>
	<jsp:include page="footer.jsp"/>
</body>
</html>