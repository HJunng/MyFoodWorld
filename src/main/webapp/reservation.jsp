<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ page import="dto.Restaurant" %>
    <%@ page import="dao.RestaurantRepository" %>
    <%@ page errorPage="exceptionNoRestId.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/main.css">
<link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Hi+Melody&display=swap" rel="stylesheet">
<%
	String cartId = session.getId();	//장바구니 아이디 = session id
%>
<meta charset="UTF-8">
<title>예약</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		RestaurantRepository dao = RestaurantRepository.getInstance();
		Restaurant rest = dao.getRestById(id);
	%>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">예약</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left"> <a href="./deleteCart.jsp?cartId=<%=cartId %>" class="btn btn-danger">삭제하기</a></td>
					<td align="right"><a href="./reservationInfo.jsp?cartId=<%=cartId %>" class="btn btn-success">예약하기</a></td>
				</tr>
			</table>
		</div>
		<div style="padding-top:50px">
			<table class="table table-hover">
				<tr>
					<th>식당 이름</th>
					<th>분류</th>
					<th>주소</th>
				</tr>
<%-- 				<% 
 					ArrayList<Restaurant> cartList = (ArrayList<Restaurant>) session.getAttribute("cartlist");
 					if(cartList==null){
						cartList = new ArrayList<Restaurant>();
 					}
					for(int i=0;i<cartList.size();i++){			//상품 리스트 하나씩 출력하기
 						Restaurant rest1 = cartList.get(i);
						
 				%> --%>
				<tr>
					<td><%=rest.getRestaurantId() %> - <%=rest.getName() %></td>
					<td><%=rest.getCategory() %></td>
					<td><%=rest.getAddress() %></td>
				</tr>
<%--			<%
					}
				%>	--%>
			</table>
			<a href="./main.jsp" class="btn btn-secondary"> &laquo; 식당 보러가기</a>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>