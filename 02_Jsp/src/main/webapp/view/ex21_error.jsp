<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage = "ex22.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어 error 처리</title>
</head>
<body>
<!-- 
	페이지 지시어에 errorPage 속성은 해당 페이지에서 에러가 발생하면,
	지시한 페이지로 이동시키는 속성이다.
 -->
 
 <h2> 에러 처리 </h2>
 <h3> 
 	<%try{ %>
 		age : <%=Integer.parseInt(request.getParameter("age"))%>
 	<%}catch(Exception e){
 		out.print(e);	
 	}%>
 	<%-- age : <%=Integer.parseInt(request.getParameter("age")) %> --%>
 </h3>
</body>
</html>