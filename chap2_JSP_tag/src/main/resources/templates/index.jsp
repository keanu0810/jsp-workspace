<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 문법 사용 예제 1</title>
</head>
<body>
	<h1>JSP 문법 태그 사용하기</h1>
	<pre>
	jsp 문법을 사용하기 위해서는 index.jsp 페이지 안에서 
	<% %> 작성 후 <%  %> 안에 자바처럼 작성해주면 됨
	</pre>
	
	<%
	String name = "KH학생";
	System.out.println("name :" + name);
	%>
	<pre>
	jsp 를 사용하기 위해서는 
	프로젝트 우클릭 -> Properties 클릭 -> Java Build Path -> Libraries -> AddLibrary
	Server Runtime -> Apache Tomcat 설정
	
	Spring boot + JSP -> Spring boot + React + NextJs or TypeScript
	</pre>
</body>
</html>