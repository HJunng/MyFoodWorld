<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/main.css">
<link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Hi+Melody&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>예약정보</title>
</head>
<body>
	<jsp:include page="menu.jsp"	/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">예약 정보</h1>
		</div>
	</div>
	<div class="container">
		<form action="./processReservationInfo.jsp" class="form-horizontal" method="post">
			<input type="hidden" name="cartId" value="<%=request.getParameter("cartId") %>"/>
			<div class="form-group row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control"	/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">예약날짜</label>
				<div class="col-sm-3">
					<input name="reservationDate" type="text" class="form-control" />(yyyy/mm/dd)
 				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">예약시간</label>
				<div class="col-sm-3">
					<input name="reservationTime" type="text" class="form-control" />(00:00)
 				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">예약인원</label>
				<div class="col-sm-3">
					<input name="reservationNum" type="text" class="form-control" />
 				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<a href="./reservation.jsp?cartId=<%=request.getParameter("cartId") %>" class="btn btn-secondary" role="button"> 이전 </a>
					<input type="submit" class="btn btn-primary" value="등록" />
					<a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button"> 취소 </a>
 				</div>
			</div>
			
		</form>
	</div>
	<jsp:include page="footer.jsp"	/>
		
</body>
</html>