<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니보기</title>
</head>
<body>
	<h2> 장바구니 보기 </h2>
	<h3>
	<%
		ArrayList<String> list =
		(ArrayList<String>)session.getAttribute("list");
	if(list == null || list.size() == 0){
		out.println("장바구니에 상품이 없습니다.");
	}else{
		for(String k:list){
			out.println("<li>"+k+"</li>");
		}
	}
	%>
	</h3>
</body>
</html>