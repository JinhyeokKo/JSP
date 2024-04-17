<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String dan = request.getParameter("dan");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gugudan1</title>
</head>
<body>
	<%
	int num = Integer.parseInt(dan);
	for (int i=1; i<10; i++) {
		out.print(num + " * " + i + " = " + num*i + "<br />");
	}
	%>
</body>
</html>