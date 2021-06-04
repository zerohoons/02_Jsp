<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체</title>
</head>
<body>
<!-- 
	JSP 내장 객체 : JSP에서 사용할 수 있도록 자체 지원하는 객체를 말한다.
	기본적으로 다음 9개가 대표적이다.
	> request >> ex04
	> response
	> out			: 화면, 즉 브라우저의 화면에 내용을 출력한다. 태그 사용이 가능하다.
	> page
	> pageContext
	> session
	> application
	> config
	> exception

 -->
 
 <h2> Hello JSP </h2>
 <hr>
 
 <% out.println("<h2> Hello JSP </h2>"); %>
 <hr>
 
 <% String str = "Hello JSP"; %>
 <h2><%out.println(str); %></h2>
 <hr>
 
 <h2><%= str %></h2>
</body>
</html>