<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Switch 활용하기</title>
</head>
<body>
	<h1>Switch와 같은 choose when otherwise 태그 활용하기</h1>
	<pre>
		<c:choose></c:choose> 다중 조건을 처리할 때 사용하는 태그
		<c:when test=""></c:when> 조건이 true일 때 실행
		<c:otherwise></c:otherwise> 모든 조건이 false 일 때 실행
	</pre>
	<c:set var="grade" value="B" />
	<!--  grade 성적이라는 변수명에 B 등급을 넣어놓은 상태 -->

	<c:choose>
		<c:when test="${ grade == 'A'}">
			<p>훌륭한 성적이네요!</p>
		</c:when>

		<!--  만약에 성적이 b라면 공부 열심히 했습니다. p 출력 -->
		<c:when test="${ grade == 'B'}">
			<p>공부 열심히 했습니다.</p>
		</c:when>
		<c:otherwise>
			<p>좀 더 노력합시다.</p>
		</c:otherwise>
	</c:choose>


	<c:set var="gender" value="?" />

	<c:choose>
		<c:when test="${gender =='M' }">
			<p>남자입니다.</p>
		</c:when>
		<c:when test="${gender =='F' }">
			<p>여자입니다.</p>
		</c:when>
		
		<c:otherwise>
			<p>잘 모르겠습니다.</p>
		</c:otherwise>
	</c:choose>

</body>
</html>







