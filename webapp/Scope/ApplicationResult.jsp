<%@ page import="java.util.Set" %>
<%@ page import="common.Person" %>
<%@ page import="java.util.Map" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>applicationResult</title>
</head>
<body>
	<h2>application 영역의 속성 읽기</h2>
	<%
	Map<String, Person> maps
	// application 영역에 저장한 maps 속성값을 읽어서 원래 형태에 저장
	= (Map<String, Person>)application.getAttribute("maps");
	// Map 컬렉션에 담긴 데이터를 확인하기 위해 키 획득
	Set<String> keys = maps.keySet();
	// 모든 키에 해당하는 값들을 하나씩 꺼내 출력
	for (String key : keys) {
		Person person = maps.get(key);
		out.print(String.format("이름 : %s, 나이 : %d<br />",
				person.getName(), person.getAge()));
	}
	%>
</body>
</html>