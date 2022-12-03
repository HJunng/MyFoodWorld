<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/main.css">
<link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Hi+Melody&display=swap" rel="stylesheet">
<title>주문 완료</title>
</head>
<body>
<%
	String reservation_cartId = "";
	String reservation_name="";	
	String reservation_reservationDate="";
	String reservation_reservationTime="";
	String reservation_reservationNum="";
	
	Cookie[] cookies = request.getCookies();
	
	if(cookies!=null){
		for(int i=0;i<cookies.length;i++){
			Cookie  thisCookie = cookies[i];
			String n = thisCookie.getName();
			if(n.equals("Reservation_cartId"))
				reservation_cartId = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Reservation_reservationDate"))
				reservation_reservationDate = URLDecoder.decode((thisCookie.getValue()),"utf-8");
		}
	}
%>
	<jsp:include page="menu.jsp"	/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">예약 완료</h1>
		</div>
	</div>
	<div class="container">
		<h2 class="alert alert-danger">예약해주셔서 감사합니다.</h2>
		<p>  <%=reservation_reservationDate %>에 뵙겠습니다!<br>
		<p> 예약번호 : <%=reservation_cartId %><br>
	</div>
	<div class="container">
		<p> <a href="./main.jsp" class="btn btn-secondary">&laquo; 식당 목록</a>
	</div>
</body>
</html>
<%
	session.invalidate();

	for(int i=0;i<cookies.length;i++){
		Cookie  thisCookie = cookies[i];
		String n = thisCookie.getName();
		if(n.equals("reservation_cartId"))
			thisCookie.setMaxAge(0);
		if(n.equals("reservation_reservationDate"))
			thisCookie.setMaxAge(0);		
		if(n.equals("reservation_reservationTime"))
			thisCookie.setMaxAge(0);		
		if(n.equals("reservation_reservationNum"))
			thisCookie.setMaxAge(0);		
		
		response.addCookie(thisCookie);
	}	
%>