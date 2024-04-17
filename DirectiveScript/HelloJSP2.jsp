<%--지시어--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage='./errorPage.jsp'%> <%--에러페이지 지정--%>
<%--외부 클래스 임포트 --%>
<%@ page import='java.text.SimpleDateFormat' %>
<%@ page import='java.util.Date' %>
<%--스크립트 요소(선언부)--%>
<%!
String str1 = "JSP";
String str2 = "안녕하세요";
String getMessage(String str3) {
	if(str3==null)
		return "null입니다";
	else if (str3.equals("JSP"))
		return "JSP입니다";
	else
		return "둘다아님";
}
%>
<%
String str3 = request.getParameter("lang");
%>
<%!
public int add(int num1, int num2) {
	return num1 + num2;
}
%>
<%--예외 설정--%>
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
	<p>
		<%
		out.println(getMessage(str3));
		%>
	</p>
	<%--외부 클래스 생성 및 출력--%>
	<%
	Date today = new Date();
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	String todayStr = dateFormat.format(today);
	out.println(todayStr);
	%>
</body>
</html>