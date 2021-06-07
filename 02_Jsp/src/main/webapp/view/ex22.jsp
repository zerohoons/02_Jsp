<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  페이지 지시어에 isErrorPage = "true"를 지정해야 ex21_error.jsp에서 발생한 오류처리를 할 수 있다. -->
	<h1>
	에러페이지
	</h1>
	
	<!-- 
	JSP 내장 객체 중 exception은 반드시 페이지 지시어 중 isErrorPage = "true" 가 지정된 상태에서 사용한다.
	 -->
	 <h2> 에러타입 : <%=exception.getClass().getName() %></h2>
	 <h2> 에러메세지 : <%=exception.getMessage() %></h2>
</body>
</html>