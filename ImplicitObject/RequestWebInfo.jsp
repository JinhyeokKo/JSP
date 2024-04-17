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
		<%-- get과 post 같은 전송 방식을 반환 --%>
		<li>데이터 전송 방식 : <%= request.getMethod() %></li>
		<%-- 호스트를 포함한 전체 주소를 반환 --%>
		<li>URL : <%= request.getRequestURL() %></li>
		<%-- 호스트를 제외한 컨텍스트 루트부터의 주소를 반환 --%>
		<li>URI : <%= request.getRequestURI() %></li>
		<li>Protocol : <%= request.getProtocol() %></li>
		<li>Server Name : <%= request.getServerName() %></li>
		<li>Server Port : <%= request.getServerPort() %></li>
		<%-- 클라이언트의 IP 주소를 반환 --%>
		<li>Client ID add : <%= request.getRemoteAddr() %></li>
		<%-- 요청 주소 뒷부분의 매개변수 전달을 위한 query string 전체를 반환 --%>
		<li>QueryString : <%= request.getQueryString() %></li>
		<%-- query string 특정 키값 확보 --%>
		<li>Parameter value1 : <%= request.getParameter("eng") %></li>
		<li>Parameter value2 : <%= request.getParameter("han") %></li>
	</ul>
</body>
</html>