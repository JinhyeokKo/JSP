<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String col = request.getParameter("col");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gugudan2</title>
</head>
<body>
	<pre>
	<%
	out.print("<br />");
	int columns = Integer.parseInt(col);
	int N = (columns > 7) ? 1 : ((3 < columns && columns <8) ? 2 : (columns == 3 ? 3 : (columns == 2 ? 4 : 8)));
	for (int i = 0; i < N; i++) {
		int col1 = Math.min((i+1)*columns + 2, 10);
		for (int k = 0; k < 10; k++) {
			for (int j = 2 + i*columns; j < col1; j++) {
				out.print((k==0) ? j + "단\t\t" : j + " * " + k + " = " + (j * k) + "\t");
			}
			out.print("<br />");
		}
		out.print("<br />");
	}
	%>
	</pre>
</body>
</html>