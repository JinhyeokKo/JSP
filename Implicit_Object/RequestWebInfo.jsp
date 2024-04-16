<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestWebInfo</title>
</head>
<body>
	<h2>1. 클라이언트와 서버의 환경정보 읽기</h2>
	<ul>
		<li>데이터 전송 방식 : <%= request.getMethod() %></li>
		<li>URL : <%= request.getRequestURL() %></li>
		<li>URI : <%= request.getRequestURI() %></li>
		<li>Protocol : <%= request.getProtocol() %></li>
		<li>Server Name : <%= request.getServerName() %></li>
		<li>Server Port : <%= request.getServerPort() %></li>
		<li>Client ID add : <%= request.getRemoteAddr() %></li>
		<li>QueryString : <%= request.getQueryString() %></li>
		<li>Parameter value1 : <%= request.getParameter("eng") %></li>
		<li>Parameter value2 : <%= request.getParameter("han") %></li>
	</ul>
</body>
</html>