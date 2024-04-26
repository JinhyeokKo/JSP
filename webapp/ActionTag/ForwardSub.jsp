<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forwardSub</title>
</head>
<body>
    <h2>포워드 결과</h2>
    <ul>
        <li>
        	<%-- 포워드는 이전페이지와 다른 페이지 --> page 영역 비공유 --%>
            page 영역 : <%= pageContext.getAttribute("pAttr") %>
        </li>
        <li>
            request 영역 : <%= request.getAttribute("rAttr") %> 
        </li>
    </ul>
</body>
</html>