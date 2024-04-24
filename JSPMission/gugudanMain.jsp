<%@ page import="utils.JSFunction" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String type = request.getParameter("type");
String dancolnum = request.getParameter("dancol");

if(type.equals("1")){
	JSFunction.alertLocation("type1", "gugudan1.jsp?dan=" + dancolnum, out);
} else if(type.equals("2")) {
	JSFunction.alertLocation("type2", "gugudan2.jsp?col=" + dancolnum, out);
} else {
	JSFunction.alertBack("타입을 선택하세요", out);
}
%>