<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/login.css">
<link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Hi+Melody&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<div class="main">
		<h1 class="logo">My Food World</h1>
		<div class="container">
			<form action="login_process.jsp" method="post">
				<p><input id="id" type="text" name="id" placeholder="ID" class="account">
				<p><input id="password" type="password" name="passwd" placeholder="Password" class="account">
				<input id="login" type="submit" class="account" value="login">
			</form>
		</div>
	</div>
</body>
</html>