<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");

	String user_id = request.getParameter("id");
	String user_pw = request.getParameter("passwd");
	
	Statement stmt=null;
	ResultSet rs = null;
	
	try{
		String sql1 = "select * from member where id='"+user_id+"';";
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql1);
		boolean b = false;
		while(rs.next()){
			String id1=rs.getString("id");
			String pw1 = rs.getString("passwd");
			String name1 = rs.getString("name");
			if(id1.equals(user_id) && pw1.equals(user_pw)){
				session.setAttribute("name",name1);
				response.sendRedirect("main.jsp");
			}else{
				out.println("아이디 비밀번호가 잘못되었습니다!");
			}
		}
	}catch(SQLException ex){
		out.println("회원 조회에 실패하였습니다.<br>");
		out.println("SQLException: "+ex.getMessage());
	}finally{
		if(stmt!=null)
			stmt.close();
		if(conn!=null)
			conn.close();
	}
	%>	


</body>
</html>