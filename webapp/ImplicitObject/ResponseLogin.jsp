<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>responseLogin</title>
</head>
<body>
	<%
	// request 내장 객체로 전송된 매개변수 획득
	String id = request.getParameter("user_id");
	String pwd = request.getParameter("user_pwd");
	// 회원 인증 진행
	if (id.equalsIgnoreCase("must") && pwd.equalsIgnoreCase("1234")) {
		response.sendRedirect("ResponseWelcome.jsp");
	} else {
		// 인증 실패 시 ResponseMain으로 포워드(전달) --> 페이지 이동과는 다르게 제어 흐름을 넘겨주고자 할 때 사용
		request.getRequestDispatcher("ResponseMain.jsp?loginErr=1").forward(request, response);
	}
	%>
</body>
</html>