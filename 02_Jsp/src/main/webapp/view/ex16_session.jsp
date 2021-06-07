<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	// 원래는 DB 검사를 통해 로그인 처리를 해야한다.
	// 다만 이번에는 id와 pw가 같으면 로그인 성공이라고 처리하자. 
	
	if(id.equalsIgnoreCase(pw)){
		//로그인 성공
		session.setAttribute("login", "ok");
		session.setAttribute("id",id);
	}else{
		//로그인 실패
		session.setAttribute("login", "no");
	}
	
	//redirect나 forward 둘 다 session의 정보는 저장되기 때문에 크게 상관없다.
	response.sendRedirect("ex17_session.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>