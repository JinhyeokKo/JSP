<%@ page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC</title>
</head>
<body>
	<h2>JDBC 테스트 1</h2>
	<%
	JDBConnect jdbc1 = new JDBConnect();
	jdbc1.close();
	%>
	<h2>JDBC 테스트 2</h2>
	<%
	// 접속 정보를 web.xml로부터 읽어 새로운 생성자를 호출
	String driver = application.getInitParameter("MySQLDriver");
	String url = application.getInitParameter("MySQLURL");
	String id = application.getInitParameter("MySQLId");
	String pw = application.getInitParameter("MySQLPwd");
	
	JDBConnect jdbc2 = new JDBConnect(driver, url, id, pw);
	jdbc2.close();
	%>
</body>
</html>