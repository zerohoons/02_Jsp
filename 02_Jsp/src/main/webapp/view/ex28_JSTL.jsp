<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL : JSP 표준 태그 라이브러리</title>
</head>
<body>
<%-- 
	1. 라이브러리를 다운 받아 해당 프로젝트에 넣기(tomcat.apache.org)
	2. 다운받은 라이브러리 WEB-INF 안에 lib 폴더를 만들어 넣어주자.
	3. 지시어줄 <%@taglib %>에 선언하고 사용한다.
	
	> 사용하는 방법
	 core : <% taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
	 fmt  : <% taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
	 > core 라이브러리는 핵심, fmt 라이브러리는 국제화(숫자와 날짜 처리할 때 사용)
	 
	4. 사용법 : <c:명령어> </c:명령어> / <fmt:명령어></fmt:명령어>
 --%>
 <%-- 
 	변수 생성 (set) : <c:set var = "변수이름" value = "변수에 저장되는 데이터"/>
 	변수 출력 (out) : <c:out value = "출력할 데이터 or ${변수이름}" /> || ${변수이름}
 	변수 삭제 (remove) : <c:remove var = "변수이름"/>
 --%>
 
 <%-- 변수 생성 및 데이터 저장 --%>
 <c:set var ="str" value ="Helo JSPL" />
 
 <%-- 변수가 가지고 있는 데이터 출력 --%>
 <h2>
 	<li><c:out value="str" /> </li>
 	<li><c:out value="${str}" /> </li>
 	<li>${str} </li>	
 </h2>
<hr> 

 <%-- 변수 삭제 후 출력해보기 (EL 사용X --%>
 <c:remove var="str"/>
 <h2>
 	<li><c:out value="str" /> </li>
 	<li><c:out value="${str}" /> </li>
 </h2>
<hr> 

 <%-- if 문 : else가 없다. 즉 조건이 참일때만 실행한다.
 	  <c:if var = "변수명" test="조건식(관계연산, 비교연산 => EL방식으로만 사용)">
 	  	조건식이 참일때 실행할 문장
 	  </ c:if>
  --%> 
  
  <c:if test = "${4>3}">
  	<li> Hello JSTL_1 </li>
  	</c:if>
	<hr>
  <c:if test = "${4<3}">
  	<li> Hello JSTL_2 </li>
  	</c:if>
 <hr>
 
 <%-- avg의 점수가 80이상이면 합격 아니면 불합격 --%>
 <c:set var="avg" value ="79"/>
  <c:if test = "${avg>=80}">
  	<li> 합격 </li>
  	</c:if>
  <c:if test = "${avg<80}">
  	<li> 불합격 </li>
  	</c:if>
 <hr>
 
 <%-- if 문은 else가 없다는 점에서 불편함이 있기에 choose문을 이용한다.
 	  choose문의 경우 switch 문과 비슷하다. 
 	  
 	  <c:choose>
 	  	<c:when test="조건식(관계연산, 비교연산 => EL방식으로만 사용)"> 참일때 실행 </c:when>
 	  	<c:when test="조건식(관계연산, 비교연산 => EL방식으로만 사용)"> 참일때 실행 </c:when>
 	  	<c:when test="조건식(관계연산, 비교연산 => EL방식으로만 사용)"> 참일때 실행 </c:when>
 	  	<c:otherwise> 위 조건이 모두 거짓일 때 실행 </c:otherwise>
 	  	
 	  --%>
 <%-- avg의 점수가 80이상이면 합격 아니면 불합격 --%>
 	<c:choose>
 		<c:when test="${avg>=80}"> 합격</c:when>
 		<c:otherwise> 불합격 </c:otherwise>
 	</c:choose>
 	<br>
 
 <%-- avg의 점수가 90점 이상이면 A학점, 80점 이상이면 B학점, 70점 이상이면 C학점, 나머지는 F학점 --%>
 <%-- 정수는 정수로 비교하고, 실수는 실수로 비교해야한다. : 자바는 혼합이 가능하나, JSTL은 불가능 --%>
 	<c:set var="avg" value="85.5" />
 	<c:choose>
 		<c:when test="${avg>=90.0}"> A </c:when>
 		<c:when test="${avg>=80.0}"> B </c:when>
 		<c:when test="${avg>=70.0}"> C </c:when>
 		<c:otherwise> F	 </c:otherwise>
 	</c:choose>
 	<br>

<%-- 반복문
	 1. 일반적인 for 문
	 <c:forEach begin = "시작값" end = "끝값" step "증가값" var = "사용변수">
	 반복내용 : EL을 활용
	 </c:forEach>
	 
	 2. 개선된 for 문(배열, ArrayList(컬렉션)에서 주로 사용)	
	 <c:forEach var = "사용변수" items="${배열,리스트(컬렉션)}">
	 반복내용 : EL을 활용
	 </c:forEach>
 --%>

<%-- 1부터 10까지 출력하기 --%>
<h3> 1-10까지 출력하기 </h3>
<c:forEach begin="1" end="10" step="1" var="k">
${k} &nbsp;
</c:forEach>
<br>

<h3> 1-10까지 짝수만 출력하기 </h3>
<c:forEach begin="1" end="10" step="1" var="k">
<c:if test ="${k%2 == 0}">
${k} &nbsp;
</c:if>
</c:forEach>
<br>

<h3> 21-30까지 출력하기 </h3>
<%-- varStatus ; count, index, (first, last => boolean)  --%>
<c:forEach begin="21" end="30" step="1" var="k" varStatus="vs">
${k} &nbsp;/ ${vs.count} &nbsp;/ ${vs.index} &nbsp;/${vs.first} &nbsp;/${vs.last} &nbsp;<hr>
</c:forEach>
<br>

<h3> 21-30까지 출력하기 </h3>
<%-- varStatus ; count, index, (first, last => boolean)  --%>
<c:forEach begin="21" end="30" step="1" var="k" varStatus="vs">
<c:if test ="${k%2 == 0}">
${k} &nbsp;/ ${vs.count} &nbsp;/ ${vs.index} &nbsp;/${vs.first} &nbsp;/${vs.last} &nbsp;<hr>
</c:if>
</c:forEach>
<hr>
<%-- 개선된 for 문 --%>
<%-- 배열 생성 --%>
<c:set var = "arr_1" value= "홍길동, 임꺽정, 둘리, 돌팔이, 고길동"/>
<c:forEach var = "k" items = "${arr_1}">
${k}&nbsp;
</c:forEach>

<%-- 반복하면서 나누기 --%>
<%-- <c: forTokens items = "배열, 컬렉션" delims="구분자" var="변수"></c:forTockens> --%>
<c:set var="arr_2" value = "홍길동, 임꺽정/ 돌팔이, 고길동/희동이,마이콜"/>
<c:forTokens items="${arr_2 }" delims="," var="k">
<li> ${k} </li>
</c:forTokens>
<hr>
<c:set var="arr_2" value = "홍길동, 임꺽정/ 돌팔이, 고길동/희동이,마이콜"/>
<c:forTokens items="${arr_2 }" delims="/" var="k">
<li> ${k} </li>
</c:forTokens>
<hr>

<%-- 페이지 이동 	: forward, sendRedirect
	 JSP 액션 태그	: forward만 존재
	 JSTL		: sendRedirect만 존재
	 둘 다 파라미터 값을 넘길 수 있다.
	 
	 <jsp:forward page ="이동할 장소">
		 <jsp:param value="" name=""/>
	 </jsp:forward>
	 
	 //jsp액션은 특이하게 받는 쪽이 아닌 보내는 쪽에서 인코딩을 해주어야한다.
	 <%request.setCharacterEncoding("utf-8");>
	 <jsp:forward page ="ex08.jsp">
		 <jsp:param value="도우너" name="name"/>
		 <jsp:param value="1004" name="age"/>
	 </jsp:forward>		 
	 <c:redirect url="ex08.jsp">
            <c:param name="name" value="또치" />
            <c:param name="age" value="108" />
         </c:redirect>  
 --%>
 <h2>form태그를 이용해서 파라미터 전송</h2>
		<form action="ex29_result.jsp" method="post">
		<fieldset>
			<legend> 데이저 전송 </legend>
			<p> **이름 : <input type="text" name="name" placeholder="이름 입력하세요" required></p>
			<p> **나이 : <input type="number" name="age" placeholder="나이 입력하세요" required></p>
			<p> 성별 : <input type="radio" name="gender" value="남성">남성
			           <input type="radio" name="gender" value="여성">여성
			</p>
			<p> 취미 : <input type="checkbox" name="hobby" value="운동">운동
			           <input type="checkbox" name="hobby" value="영화">영화
			           <input type="checkbox" name="hobby" value="게임">게임
			           <input type="checkbox" name="hobby" value="독서">독서
			</p>
			<input type="submit" value="보내기" >
		</fieldset>
	</form>

</body>
</html>