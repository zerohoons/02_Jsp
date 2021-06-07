<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	액션태그 : JSP 페이지 간에 흐름제어, 자바빈즈 컴포넌트 지원
	
	사용법
	- <jsp: 액션태그/>
	- <jsp: 액션태그1><jsp: 액션태그2><jsp: 액션태그2><jsp: 액션태그1/>
	
	1. include : 현재 페이지에서 다른 페이지 내용을 보여주는 것 
		> 지시어 include : 다른 페이지의 소스를 가져와서 현재 페이지에서 한번에 처리
					   	 파라미터 값을 전달 할 수 없다.
					   	 잘 변경되지 않는 정적인 페이지에 많이 사용된다.
					   	 (원본 페이지가 수정이 되더라도 자동으로 수정되지 않는다.)
					   	 <% @include file = "가져올 페이지 %>
					   	 
		> 액션태그 include : 다른 페이지의 소스가 아닌, 결과값을 현재페이지에 포함시킴.
						   파라미터 값을 전달 할 수 있다.
						   자주 변경되는 동적인 페이지에 많이 사용된다.
						   <jsp:include file = "가져올 페이지">
						   	<jsp:param value = "" name=""/>
						   </jsp:include> 
 --%>
 
 <!-- ex08.jsp include 하기 -->
 <h2> 지시어 include 사용 </h2>
<%--  <%@ include file = "ex08.jsp?name=홍길동&age=19" %> 파라미터값 넣을 수 없음.--%>
 <% pageContext.setAttribute("name", "아라치"); %>
 <% pageContext.setAttribute("age", 11); %>
 <%@ include file = "ex08.jsp" %>
 <hr>
 
 <h2> 액션태그 include 사용 </h2>
 <!-- 한글이 깨질 경우 -->
 <%request.setCharacterEncoding("utf-8"); %>
 <jsp:include page="ex08.jsp">
 	<jsp:param value="마이콜 " name="name"/>
 	<jsp:param value="15" name="age"/>
 </jsp:include>
 
 <!-- JSP 액션 태그에는 forward가 있고, senRedirect에는 없다.
 	  forward 태그는 다른 페이지로 이동할 때 사용한다.-->
 <%-- 
 <jsp:forward page="이동할 페이지"></jsp:forward>
 --%>
 <jsp:forward page="ex08.jsp">
 	<jsp:param value="도우너" name="name"/>
 	<jsp:param value="12313" name="age"/>
 </jsp:forward>
 
 
</body>
</html>