<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>InplicitForwardResult</title>
</head>
<body>
	<h2>ImplicitForwardResult 페이지</h2>
	<h3>각 영역에 저장된 속성 읽기</h3>
	<ul>
		<li>페이지 영역 : ${ pageScope.scopeValue }</li>
		<li>리퀘스트 영역 : ${ requestScope.scopeValue }</li>
		<li>세션 영역 : ${ sessionScope.scopeValue }</li>
		<li>애플리케이션 영역 : ${applicationScope.scopeValue }</li>
	</ul>
	<h3>영역 지정 없이 속성 읽기</h3>
	<ul>
	<%-- 포워드 된 이후에는 새로운 page영역이 만들어져 기존 page 영역에 저장해둔 값은 읽을 수 없음 --%>
	<%-- request 영역의 속성값이 출력 --> 현재 page 영역에는 scopeValue 속성이 없음 --%>
		<li>${ scopeValue }</li>
	</ul>
</body>
</html>