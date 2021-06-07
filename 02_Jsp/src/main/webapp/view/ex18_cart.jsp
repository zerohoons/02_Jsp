<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String fruits = request.getParameter("fruits");
	
	//장바구니 크기를 정할 수 없으므로, 컬렉션에 저장해야한다.
	ArrayList<String> list = 
		(ArrayList<String>)session.getAttribute("list");
	
	//맨 처음에는 해당페이지로 넘어오면, 당연히 session에는 list가 존재하지 않는다.
	if(list == null){
		list = new ArrayList<String>();
		session.setAttribute("list",list);
	}else{
	list.add(fruits);
	}
%>
<script>
// 첫번째 방법
<%-- <% 
response.sendRedirect("ex17_session.jsp");
%> --%>
//두번째 방법
alert("<%=fruits %>가 추가되었습니다.");
history.go(-1);

</script>