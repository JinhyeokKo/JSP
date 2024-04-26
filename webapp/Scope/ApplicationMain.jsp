<%@ page import="java.util.HashMap" %>
<%@ page import="common.Person" %>
<%@ page import="java.util.Map" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application</title>
</head>
<body>
	<h2>application 영역의 공유</h2>
	<%
	Map<String, Person> maps = new HashMap<>();
	// 해시맵 컬렉션에 두 객체를 저장
	maps.put("actor1", new Person("이순신", 30));
	maps.put("actor2", new Person("강감찬", 28));
	// 컬렉션 채로 application 영역에 저장
	application.setAttribute("maps", maps);
	%>
	application 영역에 속성이 저장되었습니다.
</body>
</html>