<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL을 이용한 파라미터 받기</title>
</head>
<body>
	<h2> EL을 이용한 파라미터 받기 </h2>
	<h3>
		<li>이름 : ${param.name }</li>
		<li>나이 : ${param.age}</li>
		<li>성별 : ${param.gender}</li>
		<!-- 잘 사용하지 않음. 나중에는 JSTL을 사용 -->
		<li>취미 : 
		 ${paramValues.hobby[0]}&nbsp;
		 ${paramValues.hobby[1]}&nbsp;
		 ${paramValuse.hobby[2]}&nbsp;
		 ${paramValuse.hobby[3]}&nbsp;
		</li>
	</h3>
</body>
</html>