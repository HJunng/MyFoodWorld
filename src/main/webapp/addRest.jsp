<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/addRest.css">
<link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Hi+Melody&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>음식점 추가</title>
</head>
<body>
    <div class="main">
        <div class="container">
        	<form action="addRest_process.jsp" method="post">
				<p>식당 아이디 <input type="text" name="id" class="text">
        		<p>식당 이름 <input type="text" name="name" class="text">
        		<p>지역 <input type="text" name="region" class="text">
        		<p>주소 <input type="text" name="address" class="text">
        		<p>분류 <input type="text" name="category" class="text">
        		<p>설명 <input type="text" name="description" class="text">
        		<p>배달가능여부 <input type="radio" name="delivery" value="가능"> 가능
        				<input type="radio" name="delivery" value="불가능"> 불가능
        		<p>파일 <input type="file" name="filename" class="text">
				<input id="add" type="submit" class="account" value="ADD">
			</form>
        </div>
    </div>   
</body>
</html>