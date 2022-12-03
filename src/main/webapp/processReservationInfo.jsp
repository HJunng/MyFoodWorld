<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.net.*" %>
<%
	request.setCharacterEncoding("utf-8");

	Cookie cartId = new Cookie("Reservation_cartId",URLEncoder.encode(request.getParameter("cartId"),"utf-8"));
	Cookie name = new Cookie("Reservation_name",URLEncoder.encode(request.getParameter("name"),"utf-8"));
	Cookie shippingDate =  new Cookie("Reservation_reservationDate",URLEncoder.encode(request.getParameter("reservationDate"),"utf-8"));
	Cookie country =  new Cookie("Reservation_reservationTime",URLEncoder.encode(request.getParameter("reservationTime"),"utf-8"));
	Cookie zipCode =  new Cookie("Reservation_reservationNum",URLEncoder.encode(request.getParameter("reservationNum"),"utf-8"));
	
	cartId.setMaxAge(24*60*60);
	name.setMaxAge(24*60*60);
	zipCode.setMaxAge(24*60*60);
	country.setMaxAge(24*60*60);
	
	response.addCookie(cartId);
	response.addCookie(name);
	response.addCookie(shippingDate);
	response.addCookie(country);
	response.addCookie(zipCode);
	
	response.sendRedirect("reservationConfirm.jsp");	
%>
<script>
	alert("예약이 완료되었습니다!")
	location.href='http://localhost:8080/MyFoodWorld/main.jsp';
</script>
