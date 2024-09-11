<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변수를 삭제하는 remove</title>
</head>
<body>
<h1>변수를 삭제하는 remove 태그</h1>
<pre>
JSTL 에서 system.out.println 을 c:out 을 이용해서 작성
출력문 작성 방법
c:out default="작성될 내용"
만약에 특정 변수의 값을 출력하길 원한다면
c:out var="변수명" default="변수명을 불러오지 못하거나 특정값이 없으면 보여줄 내용을 작성"


JSTL에서 특정 변수값을 삭제하는 태그
제거문 작성 방법
c:remove var="값을삭제할변수명"



</pre>
<c:set var="tempVar" value="삭제될 값 입니다."/>

<c:out value="${tempVar}" />
<c:remove var="tempVar"/>

<c:out value="${tempVar}" default="삭제될 값이 삭제되어서 안보입니다." />

</body>
</html>