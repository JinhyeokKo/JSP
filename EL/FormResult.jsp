<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FormResult</title>
</head>
<body>
	<h3>EL로 폼값 받기</h3>
	<ul>
		<li>이름 : ${ param.name }</li> <%-- text, radio 타입 값 받기 --%>
		<li>성별 : ${ param.gender }</li>
		<li>학력 : ${ param.grade }</li>
		<li>관심 사항 : ${ paramValues.inter[0] } <%-- checkbox 값 받기 --%>
					  ${ paramValues.inter[1] }
					  ${ paramValues.inter[2] }
					  ${ paramValues.inter[3] }</li>
	</ul>
</body>
</html>