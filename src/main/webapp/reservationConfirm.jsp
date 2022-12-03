<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="dto.Restaurant" %>
<%@ page import="dao.RestaurantRepository" %>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("utf-8");

	String cartId = session.getId();
	
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
			if(n.equals("Reservation_name"))
				reservation_name = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Reservation_reservationDate"))
				reservation_reservationDate = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Reservation_reservationTime"))
				reservation_reservationTime = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			if(n.equals("Reservation_reservationNum"))
				reservation_reservationNum = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			
		}
	}
%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/main.css">
<link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Hi+Melody&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>예약 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp"	/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">예약 정보</h1>
		</div>
	</div>
	<div class="container col-8 alert alert-info">
		<div class="text-center">
			<h1 class="display-3">확인서</h1>
		</div>
		<div>
			<table class="table table-hover">
				<tr>
					<th class="text-center">성명</th>
					<th class="text-center">날짜</th>
					<th class="text-center">시간</th>
					<th class="text-center">인원</th>
				</tr>
				<tr>
					<td class="text-center"><em><%=reservation_name %></em></td>
					<td class="text-center"><%=reservation_reservationDate %></td>
					<td class="text-center"><%=reservation_reservationTime %></td>
					<td class="text-center"><%=reservation_reservationNum %></td>
				</tr>
				
			</table>
			<a href="./reservationInfo.jsp?cartId=<%=reservation_cartId %>" class="btn btn-secondary" role="button"> 이전 </a>
			<a href="./thankCustomer.jsp" class="btn btn-success" role="button"> 예약 완료 </a>
			<a href="./checkOutCancelled.jsp %>" class="btn btn-secondary" role="button"> 취소 </a>
		</div>
	</div>
</body>
</html>