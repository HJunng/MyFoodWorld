<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SIGN UP</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");
	
		String id=request.getParameter("id");
		String pw = request.getParameter("passwd");
		String name = request.getParameter("name");
		Statement stmt=null;
		ResultSet rs = null;
		
		try{
			String sql1 = "select * from member";
			String sql = "insert into member(id,passwd,name) values('"+id+"','"+pw+"','"+ name +"')";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql1);
			boolean b = false;
			while(rs.next()){
				String id1=rs.getString("id");
				if(id1.equals(id)){
				%>
				<script>
					alert("아이디 중복! 아이디를 다시 입력해주세요!");
					history.back();
				</script>
				<%
				b=true;
				break;
				}
			}
			stmt.close();
			stmt = conn.createStatement();
			if(b==false){
				System.out.println("ㄴ");
				stmt.executeUpdate(sql);
				%>
				<script>
					alert("회원가입에 성공하셨습니다! 환영합니다!");
					location.href='http://localhost:8080/MyFoodWorld/login1.jsp';
				</script>
				<%
			}
		}catch(SQLException ex){
			out.println("회원가입이 실패하였습니다.<br>");
			out.println("SQLException: "+ex.getMessage());
		}finally{
			if(stmt!=null)
				stmt.close();
			if(conn!=null)
				conn.close();
		}
		%>
</body>