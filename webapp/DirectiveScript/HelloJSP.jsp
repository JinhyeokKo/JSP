<%--지시어--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--스크립트 요소(선언부)--%>
<%!
String str1 = "JSP";
String str2 = "안녕하세요";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HELLO JSP</title>
</head>
<body>
	<%--스크립트 요소(표현식)--%>
	<h2>처음 만들어보는 <%= str1 %></h2>
	<p>
		<%--스크립트 요소(스크립틀릿)--%>
		<%
		out.println(str2 + str1 + "입니다."); 
		%>
	</p>
</body>
</html>