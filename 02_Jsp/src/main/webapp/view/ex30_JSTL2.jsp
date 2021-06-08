<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숫자와 날짜 포맷팅</title>
</head>
<body>
	<h3> 천단위 숫자 처리와 숫자만 받기 </h3>
	<li> <fmt:formatNumber value="1234.567"></fmt:formatNumber></li>
	
	<%-- 오류발생 : 중간에 숫자가 아닌 문자가 존재.
	<li> <fmt:formatNumber value="aaa123.548"></fmt:formatNumber></li>
	<li> <fmt:formatNumber value="12qwe3.548"></fmt:formatNumber></li>
	 --%>
	<hr>
	 
	 <h3> 숫자처리 </h3>
	<li> <fmt:parseNumber value="1234.567"></fmt:parseNumber></li>
 	<li> <fmt:parseNumber value="12qwe3.548"></fmt:parseNumber></li>
	<%-- parseNumber 의 경우 중간에 문자는 그 앞에까지만 출력을 하지만 맨 앞 문자는 오류
	<li> <fmt:parseNumber value="aaa123.548"></fmt:parseNumber></li>
 	--%>	 
	<hr>
	<h3> 반올림처리 : 정수만 구하기 </h3>
	<li> <fmt:formatNumber value="1234.567" pattern = "#,###"/></li>
	<li> <fmt:formatNumber value="1234.447" pattern = "#,###"/></li>
	<hr>

	<h3> 반올림처리 : 소숫점 첫째자리까지 구하기 </h3>
	<li> <fmt:formatNumber value="1234.567" pattern = "#,###.#"/></li>
	<li> <fmt:formatNumber value="1234.467" pattern = "#,###.#"/></li>
	<li> <fmt:formatNumber value="12345" pattern = "#,###"/></li>
	<li> <fmt:formatNumber value="12345" pattern = "#,###"/></li>
	
	<h3> #과 0의 차이(0은 반드시 채워야한다.) </h3>
	<li> <fmt:formatNumber value="127" pattern="#,###"></fmt:formatNumber>
	<li> <fmt:formatNumber value="127" pattern="#,###.#"></fmt:formatNumber>
	<li> <fmt:formatNumber value="127" pattern="0,000"></fmt:formatNumber>
	<li> <fmt:formatNumber value="127" pattern="0,000.0"></fmt:formatNumber>
	<hr>
	
	<h3> 현재 시스템에 맞는 화폐단위 사용(정수만 : 정수 미만은 반올림이 되어진다.) </h3>
	<li> <fmt:formatNumber value="12345.447" type="currency"/>
	<li> <fmt:formatNumber value="12345.547" type="currency"/>
	<li> <fmt:formatNumber value="12345" type="currency"/>
	<li> <fmt:formatNumber value="12345" type="currency"/>
	<hr>

	<h3> 퍼센트(value*100 + %)</h3>
	<li> <fmt:formatNumber value="12" type="percent"/>
	<li> <fmt:formatNumber value="0.12" type="percent"/>
	<hr>
	
	<h3> 오늘 날짜 구하기 </h3>
	<c:set var="now" value = "<%=new Date() %>"></c:set>
	<li>오늘 날짜 : ${now }</li>
	<hr>

	<h3> 오늘 날짜 구하기 </h3>
	<!-- useBean : jsp 액션 태그에서 객체생성하는 태그 (Date now2 = new Date(); 와 의미 동일) -->
	<jsp:useBean id="now2" class="java.util.Date"></jsp:useBean>
	<li>오늘 날짜 : ${now2 }</li>
	<li><fmt:formatDate value="${now2}"/></li>
	<li><fmt:formatDate value="${now2}" dateStyle="short"/></li>
	<li><fmt:formatDate value="${now2}" dateStyle="medium"/></li>
	<li><fmt:formatDate value="${now2}" dateStyle="long"/></li>
	<li><fmt:formatDate value="${now2}" dateStyle="full"/></li>
	<hr>
	<li><fmt:formatDate value="${now2}" type="time" timeStyle="short"/></li>
	<li><fmt:formatDate value="${now2}" type="time" timeStyle="medium"/></li>
	<li><fmt:formatDate value="${now2}" type="time" timeStyle="long"/></li>
	<li><fmt:formatDate value="${now2}" type="time" timeStyle="full"/></li>
	<hr>
	<li><fmt:formatDate value="${now2}" type="both" dateStyle="short" timeStyle="short"/></li>
	<li><fmt:formatDate value="${now2}" type="both" dateStyle="medium" timeStyle="medium"/></li>
	<li><fmt:formatDate value="${now2}" type="both" dateStyle="long" timeStyle="long"/></li>
	<li><fmt:formatDate value="${now2}" type="both" dateStyle="full" timeStyle="full"/></li>
	
	
	
	
</body>
</html>