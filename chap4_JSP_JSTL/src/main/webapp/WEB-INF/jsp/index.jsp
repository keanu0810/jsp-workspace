<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--  
taglib 태그 라이브러리 #http://java.sun.com/jsp/jstl/core -> 사용할 때 이름명칭 c
해시태그 #여행 #즐겁다 #휴양지 #추석
 -->    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 웹 사이트</title>
</head>
<body>
	<h1> c 구문을 활용한 jstl 사용하기</h1>
	<pre>
	JSTL : JSP Standard Tag Library  jsp 기본으로 사용하는 태그 라이브러리
	JSP에서 반복문, 조건문, 변수 처리
	사용방법
	맨 위에 JSTL 주소를 가져와서 사용한다 설정
	< % @ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" % >
	
	<c:set var="이름" value="홍길동"/>
	
	<p>NAME : ${이름} </p>
	
	c:해서 JSTL저장된 기능을 가져올 수 있음
	set setter의 줄임말 이름이라는 변수명에 value로 설정한 홍길동을 넣겠다 표시
	</pre>
	
	<h3>c 태그 이용해서 if문 설정</h3>
	<pre>
	c태그를 이용해서 if문 설정
 	c:if  test="${테스트할 조건 작성 }
 	c:if 문은 else 가 존재하지 않음 오직 if 만 사용
	</pre>
	<c:set var="age" value="20" />
	
	<c:if test="${age >= 18 }">
		<p> 당신은 성인입니다. </p>
	</c:if>
	<!--  나이가 18 미만 일때는 청소년 입니다. 작성 -->
	<c:if test="${ age <18 }">
		<p> 당신은 청소년 입니다. </p>
	
	</c:if>
	
	
</body>
</html>







