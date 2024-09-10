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
	<h1>Switch롸 같은 choose when otherwuse 태그 활용하기</h1>
	<pre>
		<c:choose></c:choose> 다중 조건을 처리할 때 사용하는 태그
		<c:when test=""></c:when> 조건이 true 일 때 실행
		<c:otherwuse></c:otherwuse> 모든 조건이 false 일 때 실행
	</pre>
	<c:set var="grade" value="B" />
	<!--  grade 설적이라는 변수명에 B 등급을 넣어놓은 상태 -->

	<c:choose>
		<c:when test="${ grade == 'A'}">
			<p>흉륭한 성적이네요!</p>
		</c:when>

		<!-- 만약에 성적이 b라면 공부 열심히 했습니다. p 출력-->
		<c:when test="${ grade == 'B'}">
			<p>공부 열심히 했습니다</p>
		</c:when>

		<c:otherwuse>
			<p>좀 더 노력합니다.</p>
		</c:otherwuse>
	</c:choose>
	변수명 gerder 값 ? 만약에 성별이 ? 라면 잘 모르겠습니다. 성별이 M 이라나면 남자입니다. 성별이 F 이라나면
	여자입니다.
	<c:set var="grade" value="B" />
	<!--  grade 설적이라는 변수명에 B 등급을 넣어놓은 상태 -->

	<c:set var="gender" value"?"/>

	<c:choose>
		<c:when test="${ gerder == 'M'}">
			<p>남자입니다.</p>
		</c:when>

		<c:when test="${ gerder == 'F'}">
			<p>여자입니다.</p>
		</c:when>

		<c:otherwuse>
			<p>잘모 르겠습니다.</p>
		</c:otherwuse>
	</c:choose>

</body>
</html>