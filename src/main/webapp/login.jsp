<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/login.css">
<link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Hi+Melody&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>LOGIN</title>
</head>
<body>
    <div class="main">
        <h1 class="logo">My Food World</h1>
        <div class="container">
            <input type="text" placeholder="ID" id="id" class="account">
            <input type="password" placeholder="Password" id="password" class="account">
            <button id="login" class="account">login</button>
            <p id="alert" class="account"> </p>
            
        </div>
    </div>   
    <script src="loginScript.js"></script>
</body>
</html>