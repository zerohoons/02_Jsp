<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> form 태그를 이용해서 파라미터를 전송하자. </h2>
	<form action="ex27_result.jsp">
		<fieldset>
			<legend> 데이터 전송 </legend>
				<p> 이름 : <input type = "text" name = "name" placeholder = "이름을 입력하세요" required></p>
				<p> 나이 : <input type = "number" name = "age" placeholder = "나이를 입력하세요" required></p>
				<p> 성별 : <input type = "radio" name = "gender" value = "남성"> 남성
						  <input type = "radio" name = "gender" value = "여성"> 여성</p>
				<p> 취미 : <input type="checkbox" name="hobby" value="운동"> 운동
						  <input type="checkbox" name="hobby" value="독서"> 독서
						  <input type="checkbox" name="hobby" value="산책"> 산책
						  <input type="checkbox" name="hobby" value="여행"> 여행
						  <input type="checkbox" name="hobby" value="공부"> 공부
				</p>
			<input type="submit" value="보내기" >
		</fieldset>
	</form>
</body>
</html>