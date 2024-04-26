<%@ page import="common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 속성 저장 --> 객체가 아닌 기본 타입 값들은 해당 wrapper 클래스로 auto boxing 된 후 저장(int --> Integer)
pageContext.setAttribute("pageInteger", 1000);
pageContext.setAttribute("pageString", "페이지 영역의 문자열");
pageContext.setAttribute("pagePerson", new Person("한석봉", 99));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext</title>
</head>
<body>
	<h2>page 영역의 속성값 읽기</h2>
	<%
	// 속성 읽기 --> 모든 속성이 Object 타입으로 저장되어 있으므로 다시 원래 타입으로 형 변환
	int pInteger = (Integer)(pageContext.getAttribute("pageInteger"));
	// String 타입인 경우 toString() 으로 문자열로 변환하여 출력
	String pString = pageContext.getAttribute("pageString").toString();
	Person pPerson = (Person)(pageContext.getAttribute("pagePerson"));
	%>
	<ul>
		<li>Integer 객체 : <%= pInteger %> </li>
		<li>String 객체 : <%= pString %> </li>
		<%-- 멤버 변수의 값을 읽어옴 --> DTO private 선언 --%>
		<li>Person 객체 : <%= pPerson.getName() %>, <%= pPerson.getAge() %></li>
	</ul>
	
	<h2>include된 파일에서 page 영역 읽어오기</h2>
	<%@ include file="PageInclude.jsp" %> <%-- page 영역 유지 --%>
	
	<h2>페이지 이동 후 page 영역 읽어오기</h2>
	<a href="PageLocation.jsp">PageLocation.jsp 바로가기</a> <%-- page 영역 소멸 --%>
</body>
</html>