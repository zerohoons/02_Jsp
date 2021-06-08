<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL과 JSTL</title>
</head>
<body>
  <h2>EL과 JSTL를 이용한 파라미터 받기</h2>
  <h3>
  		<li>%{param.name}</li>  
  		<li>%{param.age}</li>  
  		<li>%{param.gender}</li> 
  		<c:forEach items ="${paramValues.hobby}" var ="k">
  			${k}&nbsp;
  		</c:forEach> 
  </h3>
  	
</body>
</html>