<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forTokens</title>
</head>
<body>
	<h1>문자열을 구분자로 나눠서 반복하는 방법</h1>
	<pre>
	배열 형식이 아니라 하나의 값으로 특정 기준에 의해 작성된 값을 구분자를 이용해서 출력
	
	c:set  var="str" value="사과,배,포도"
	
	c:setter에서 설정한 변수명 str에 사과,배,포도 들어있음
	str = "사과,배,포도"
	
	
	c:forTokens  var="f" items="${str}" delims=","
		${f}
	/c:forTokens
	
	forTokens : 특정 값을 기준으로 구분해서 반복 출력
	var    : 아래에서 반복으로 구분자로 인해 끊어진 값을 하나씩 변수명에 담아 출력하기 위해 설정하는 변수명
	items  : 어떤 값을 구분자로 끊을 것인지 작성    변수명이 들어갈 수 있고, 구분자가 들어간 값이 들어갈 수 있음
	delims : 끊을 특정 기호나 값을 작성
	
	</pre>
	
	<c:set  var="str" value="사과,배,포도"/>
	
	<c:forTokens  var="f" items="${str}" delims=",">
		<li>${f}</li>
	</c:forTokens>
	
	<c:forTokens  var="s" items="키위!참외!수박" delims="!">
		<li>${s}</li>
	</c:forTokens>
	
	<!--  
	햄버거~피자~오렌지~치킨~파스타~냉모밀~냉면~라멘~       food 변수명에 담아서
	구분자 기준으로 출력
	HelloController /api/food 이름으로 fortokens 출력
	 -->
	<c:forTokens  var ="food" items="햄버거~피자~오렌지~치킨~파스타~냉모밀~냉면~라멘" delims="~">
	
		<li>${food}</li>
	</c:forTokens>
	
	
</body>
</html>






