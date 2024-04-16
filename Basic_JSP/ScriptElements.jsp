<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
public int add(int num1, int num2) {
	return num1 + num2;
}
%>
<%
int number = 0;
try {
	String num = request.getParameter("num");
	number = Integer.parseInt(num);
	out.println("덧셈 결과:" + add(number, 40));
} catch (Exception e){
	out.println("num이 null 입니다");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int result = add(10, 20);
	%>
	덧셈 결과 1: <%= result %><br />
</body>
</html>