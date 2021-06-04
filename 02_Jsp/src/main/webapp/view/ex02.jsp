<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트요소</title>
</head>
<body>
<%--    스크립트요소 : HTML 안에서 자바코드를 사용할 수 있도록 만든 요소들.
		> 선언부 <%! 내용 %> : 변수 선언이나 메소드 선언을 할 때 사용
		> 스크립트릿 <% 내용 %> : 자바 코드를 코딩할 때 사용
		> 표현식 <%= 내용%> : 변수값이나 메소드의 결과값을 출력할 때 사용  
		
		**주의사항 : 스크립트 요소들은 겹쳐서 사용하면 안된다. --%>
	<h2>0-10까지 for 문을 사용해서 출력하자.</h2>
	<%
		for(int i = 0; i <11; i++){
			//콜솔에 출력하는 것
			//System.out.println(i);
			
			//웹페이지, 브라우저에서 출력
			//서블릿과 동일하게 out 객체가 존재하기 때문에 사용 가능하다.(태그도 사용가능);
			out.print(+i+"&nbsp;");
		}
	%>
	<hr>
	<h2>0-10까지 for 문을 사용해서 출력하자.</h2>
	<% for(int i = 0; i <11; i++){ %>		
	<%= i %>
	<% } %>	
		
	<hr>
	<h2>0-10까지의 합을 for 문을 사용해서 출력하자.</h2>
	<%
	 	int sum = 0;
		for(int i=0; i <11; i++){
			sum +=i;
		}
		out.println("합은 " + sum);
	%>

	<hr>
	<h2>0-10까지의 합을 for 문을 사용해서 출력하자.</h2>
	<%
	 	int sum2 = 0;
		for(int i=0; i <11; i++){
			sum2 +=i;
		}
	%>
	합 : <%= sum2 %>
	
	<hr>
	<h3>변수와 메소드를 만들어서 사용하기.</h3>
	<%!
	public int add(int s1, int s2){
		int add = s1 + s2;
		return add;
	}
	
	int result = 0;
	public void sub(int s1, int s2){
		result = s1 - s2;
	}
	%>
	<p>7 + 5 = <%=add(7,5) %></p>
	<%sub(7,5);%>
	<p>7 - 5 = <%=result %></p>
	
	<hr>
	<h3>오늘 날짜와 운세 출력하기.</h3>
	<%
	Calendar cal = Calendar.getInstance();
	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH)+1;
	int date = cal.get(Calendar.DATE);
	int luck = (int)(Math.random()*101);
	out.println("오늘은 "+year+"/"+month+"/"+date+" 입니다.");
	out.println("오늘의 운세지수는 "+luck+"% 입니다.");
	%>
	<p><%=year %>년 <%=month%> 월 <%=date %>일 의 당신의 운세는 <%=luck %>% 입니다.</p>
	<hr>
	<h3>구구단 5단 출력하기.</h3>
	<%
	for(int i = 1; i<10; i++){
		out.println(5+" * "+i+" = "+5*i +"&nbsp;");
	}
	%>
	<br>
	<%	for(int i = 1; i<10; i++){ %>
	5 * <%=i %> = <%=5*i%> <br>
	<% }%>
</body>
</html>