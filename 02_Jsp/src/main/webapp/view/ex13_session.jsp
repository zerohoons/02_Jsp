<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex13_session </title>
</head>
<body>
	<%--  
		*session 저장 방법*
 	   저장방법 : session.setAttribute("이름","객체");
 	   호출방법 : session.getAttribute("이름");
 	   생명주기 : 브라우저를 종료 하기 전까지 데이터를 갖고 있다.
 	   		  : 지정된 시간이 끝나기 전까지는 데이터를 갖고 있다.

		*request 저장 방법*
 	   저장방법 : request.setAttribute("이름","객체");
 	   호출방법 : request.getAttribute("이름");
 	   생명주기 : response를 하기 전까지 데이터를 갖고 있다.
 	   
		*pageContext 저장 방법*
 	   저장방법 : pageContext.setAttribute("이름","객체");
 	   호출방법 : pageContext.getAttribute("이름");
 	   생명주기 : 해당 페이지를 벗어나는 순간, 저장정보도 사라진다 
 	   
 	   --%>
 	   
 	 <%
 	  pageContext.setAttribute("name", "홍길동");
      pageContext.setAttribute("age", 24);
      
      request.setAttribute("name", "둘리");
      request.setAttribute("age", 32);

      session.setAttribute("name", "마루치");
      session.setAttribute("age", 132);
  	  %>
   
   
   <h2>이름 : <%=pageContext.getAttribute("name") %></h2>   
   <h2>나이 : <%=pageContext.getAttribute("age") %></h2>
   <hr> 
    
   <h2>이름 : <%= request.getAttribute("name")%></h2>   
   <h2>나이 : <%= request.getAttribute("age")%></h2>  
   <hr> 
   
   <h2>이름 : <%= session.getAttribute("name")%></h2>   
   <h2>나이 : <%= session.getAttribute("age")%></h2>  
   <%-- ex14_result.jsp로 이동하자 
        이동방법은 redirect와 forward 이다.
        redirect는 request 정보도 사라진다.
        forward는 request 정보는 사라지지 않는다.
        session은 redirect나 forward의 영향을 받지 않기 때문에, 정보가 사라지지 않는다.
   --%>
   
   <%-- response.sendRedirect("ex14_result.jsp"); --%>
   <% request.getRequestDispatcher("ex14_result.jsp").forward(request, response); %>
</body>
</html>