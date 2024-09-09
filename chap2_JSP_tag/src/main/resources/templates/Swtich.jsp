<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Swtich 문 활용한 JSP</title>
</head>
<body>
	<h1>Switch 활용 JSP</h1>
	<%
	int b = 3;
	switch (b) {
		case 1:
	%>
		<p> b 는  1  입니다.</p>
	<%	break;
		case 2:
	%>
		<p> b 는  2  입니다.</p>
	<%	break;
		case 3:
	%>
		
		<p> b 는  3  입니다.</p>
	<%	break;
		default:	
	%>	
		<p> b 는  1, 2, 3에 해당하는 숫자가 아닙니다.</p>
	<%	break;
	}
	%>
</body>
</html>






