<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Restaurant" %>
<%@ page import="dao.RestaurantRepository" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/main.css">
<link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Hi+Melody&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>식당 목록</title>
</head>
<body>
<script type="text/javascript">
	function addToReserv(){
		if(confirm("예약하시겠습니까?")){
			document.addForm.submit();
		}else{
			doocument.addForm.reset();
		}
	}
</script>
	<%
		String user_id = (String) session.getAttribute("name");
	
		String R = (String) session.getAttribute("REGION");
		String Rprint;
		if(R==null){
			R="ALL";
			Rprint="";
		}
		else if(R.equals("ALL"))
			Rprint="";
		else
			Rprint="["+R+"]"; 
		
	%>
	<jsp:include page="loginMenu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">식당 목록 <%=Rprint %></h1>
		</div>
		<div class="combo">
			<form action="main_search.jsp" method="post">
				<select id="region" name="region">
					<option value="ALL" selected>=== 전체 ===</option>
					<option value="서울">서울</option>
					<option value="인천">인천</option>
					<option value="경기">경기도</option>
					<option value="강원">강원도</option>
					<option value="충청">충청도</option>
					<option value="경상">경상도</option>
					<option value="전라">전라도</option>
					<option value="제주">제주</option>
				</select>
				<input id="search" type="submit" value="검색">
			</form>
		</div>
	</div>
	<%
		RestaurantRepository dao = RestaurantRepository.getInstance();
		ArrayList<Restaurant> listOfRests = dao.getAllRests();
		
	%>
	<div class="container" >
		<div class="col" align="left">	<%--반응형 웹에서 쓸 때 사용하는 건가? --%>
			<%
				for(int i=0;i<listOfRests.size();i++){
					Restaurant rest = listOfRests.get(i);
			
					if(!R.equals("ALL") && !R.equals(rest.getRegion())){
						continue;
					}
			%>
			<div class="row">
				<div class="col-md-2">
					<img src="./resources/images/<%=rest.getFilename() %>" style="width:110%">
				</div>
				<div class="col-md-9">
					<h3><%="["+rest.getCategory()+"] "+rest.getName() %></h3>
					<br>
					<p><%= rest.getDescription() %>
					<p><%= rest.getAddress() %>
				</div>
				<div class="col-md-1">
					<br><br><br><br>
					<p><form name="addForm" action="./reservation.jsp?id=<%=rest.getRestaurantId() %>" method="POST">
							<a href="./reservation.jsp?id=<%=rest.getRestaurantId() %>" class="btn btn-info" onclick="addToReserv()">예약하기 &raquo;</a>
					</form>
				</div>
			</div>
			<%
				out.println("<hr>");
				}
			%>
		</div>
	</div>
	<jsp:include page="footer.jsp"	/>
</body>
</html>