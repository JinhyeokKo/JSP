<%@ page import="common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageLocation</title>
</head>
<body>
	<h2>이동 후 page 영역의 속성값 읽기</h2>
	<%
	// 가져오려는 getAttribute()는 가져오려는 속성이 존재하지 않는 다면 null 반환
	// null을 int 타입 변수에 담으려 시도하면 NullPointerException이 발생
	Object pInteger = pageContext.getAttribute("pageInteger");
	Object pString = pageContext.getAttribute("pageString");
	Object pPerson = pageContext.getAttribute("pagePerson");
	%>
	<ul>
		<%-- 값을 화면에 출력할 때 null이 아닌지 확인 --%>
		<li>Integer 객체 : <%= (pInteger == null) ? "값 없음" : pInteger %> </li>
		<li>String 객체 : <%= (pString == null) ? "값 없음" : pString %> </li>
		<li>Person 객체 : <%= (pPerson == null) ? "값 없음" : ((Person)pPerson).getName() %></li>
	</ul>
</body>
</html>