<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/signUp.css">
<link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Hi+Melody&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>Sign Up</title>
</head>
<script type="text/javascript">
	function CheckForm(){
		var form= document.member;
		if(form.id.value.length<4 || form.id.value.length>12){
			alert("아이디는 4-12자 이내로 입력 가능합니다!");
			form.id.focus();			//select = focus
			return;
		}else if(form.passwd.value.length<4){
			alert("비밀번호는 4자 이상으로 입력해야 합니다!");
			form.passwd.select();
			return;
		}
		form.submit();
		
		//alert("아이디 : "+document.loginForm.id.value+"\n비밀번호 : "+document.loginForm.passwd.value);
	}
</script>
<body>
	<div class="main">
		<h1 class="logo">My Food World</h1>
		<div class="container">
			<form action="signUp_process.jsp" name="member" method="post">
				<p><input id="id" type="text" name="id" placeholder="ID" class="account">
				<p><input id="password" type="password" name="passwd" placeholder="Password" class="account">
				<p><input id="name" type="text" name="name" placeholder="Name" class="account">
				
				<input id="signUp" type="button" class="account" value="sign Up" onclick="CheckForm()">
			</form>
		</div>
	</div>
</body>
</html>