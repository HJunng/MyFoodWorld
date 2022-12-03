<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ page import="dto.Restaurant" %>
    <%@ page import="dao.RestaurantRepository" %>
<%
	String id=request.getParameter("id");
	if(id==null || id.trim().equals("")){
		response.sendRedirect("products.jsp");
		return;
	}
	
	RestaurantRepository dao = RestaurantRepository.getInstance();
	
	Restaurant rest = dao.getRestById(id);
	if(rest==null){
		response.sendRedirect("exceptionNoRestId.jsp");
	}
	
	ArrayList<Restaurant> restsList = dao.getAllRests();
	Restaurant goods = new Restaurant();
	for(int i=0;i<restsList.size();i++){
		goods = restsList.get(i);
		if(goods.getRestaurantId().equals(id)){
			break;
		}
	}
	
	ArrayList<Restaurant> list = (ArrayList<Restaurant>) session.getAttribute("cartlist");
	if(list==null){
		list=new ArrayList<Restaurant>();
		session.setAttribute("cartlist",list);
	}
	
	int cnt=0;
	Restaurant goodsQnt = new Restaurant();
	
	for(int i=0;i<list.size();i++){
		goodsQnt = list.get(i);
		if(goodsQnt.getRestaurantId().equals(id)){
			cnt++;
			int orderQuantity = goodsQnt.getNumber()+1;
			goodsQnt.setNumber(orderQuantity);
		}
	}
	
	if(cnt==0){
		goods.setNumber(1);
		list.add(goods);
	}
	response.sendRedirect("reservation.jsp?id="+id);
%>