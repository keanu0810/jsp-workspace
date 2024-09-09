<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지시자 태그 JSP</title>
</head>
<body>
	<h1>
	<%@ %> 지시자 태그
	</h1>
	<pre> <%@ %> 지시자 태그
		JSP 페이지에서 설정을 정의, 다른 jsp 파일을 포함해서 재사용을 높일 수 있음
		대표적으로 page include tablib 지시자가 존재
		page = JSP 페이지에 속성 설정 html 형식인지 글자 타입은 무엇인지 설정
		<%--
		<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		 --%>
		include = 다른 jsp 파일을 포함해서 사용
		<%--
		<%@ include file="파일명.jsp" %>
		 --%>
		taglib = 외부에서 bootstrap이나 jquery ajax와 같은 사이트에서 특정 기능을 가져와 사용할 수 있도록 설정
				uri = 숫자(urn)나 주소(url)로 된 값을 가져오기
				prefix = 가져온 값을 c라는 이름으로 별명지어서 사용
	
	
		<%--
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		 --%>
	</pre>
</body>
</html>