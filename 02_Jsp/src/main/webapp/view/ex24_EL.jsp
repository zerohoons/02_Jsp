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
	EL : 표현식(<%= %>) 대신해서 사용되는 새로운 스크립트 언어.
		 <%= 변수값 또는 계산식%> ==> ${변수 또는 계산식}
	
	>앞에서 배운 pageContext, request, session, application의 속성을 이용한 
	 데이터 저장 정보를 바로 호출해서 사용할 수 있다. 
	>파라미터 값도 바로 받아서 사용할 수 있다.  
	--%>
<h2> 표현식 산술 연산 사용 예제 </h2>
<h3>
	<li>15+7=<%=15+7 %></li>
	<li>15-7=<%=15-7 %></li>
	<li>15*7=<%=15*7 %></li>
	<li>15/7=<%=15/7 %></li>
	<li>15%7=<%=15%7 %></li>
</h3>
<hr>
<h2> EL 산술 연산 사용 예제 </h2>
<h3>
	<li>15+7=${15+7} </li>
	<li>15-7=${15-7} </li>
	<li>15*7=${15*7} </li>
	<li>15/7=${15/7} </li>
	<li>15%7=${15%7} </li>
</h3>
<hr>
<h2> 표현식 변수 사용 예제 </h2>
<% int su = 125+25;%>
<h3>su = <%=su%></h3>
<hr>
<h2> EL 변수 사용 예제 </h2>
<!-- EL에서 변수를 호출할 때는, 위의 pageContext, request, session, application의 속성을
	 이용해서, 데이터가 저장되어 있어야만 호출할 수 있다. -->
<% int su2 = 125+25;
	pageContext.setAttribute("su2", su2);%>
	
<h3>su2 -${su2}</h3>
<hr>

<!--  pageContext, request, session, application속성의 이름이 같을 경우,
	  우선순위에 따라  pageContext > request > session > application  -->
<% pageContext.setAttribute("pc", "i3"); %>
<% request.setAttribute("pc", "i5"); %>
<% session.setAttribute("pc", "i7"); %>
<% application.setAttribute("pc", "i9"); %>
<h2> EL 변수 사용 예제2 </h2>
<h3> pc : ${pc}</h3>
<h3> pc : ${pageScope.pc}</h3>
<h3> pc : ${requestScope.pc}</h3>
<h3> pc : ${sessionScope.pc}</h3>
<h3> pc : ${applicationScope.pc}</h3>

<!-- 페이지를 이동하자. -->
<!-- response.sendRedirect 로 페이지 이동을 하면, pageContext와 request는 사라지게 된다. -->
<%-- <% response.sendRedirect("ex25_result.jsp"); %> --%>

<!-- forward로 페이지 이동을 하면, pageContext 정보만 사라지게 된다. -->
<%request.getRequestDispatcher("ex25_result.jsp").forward(request, response); %>

</body>
</html>