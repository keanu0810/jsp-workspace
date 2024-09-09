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
	<%

	%> 작성 후 <%

	%> 안에 자바처럼 작성해주면 됨
	</pre>

	<%
	String name = "KH학생";
	System.out.println("name :" + name);
	%>
	<pre>
	jsp 를 사용하기 위해서는 
	프로젝트 우클릭 -> Properties 클릭 -> Java Build Path -> Libraries -> AddLibrary
	Server Runtime -> Apache Tomcat 설정
	
	Spring boot + JSP -> Spring boot + React ( + option) NextJs or TypeScript

	</pre>

	<h3>
		JSP
		<%

	%>
		태그 사용하기
	</h3>
	<pre>
	이 페이지에서만 사용할 변수를 작성할 때는 <%

	%> 만 사용
	JSP 에서 System.out.println 을 사용할 때는
	System 을 지워주고 사용
	System.out.println("name :" + name);
	↓
	out.println("name : " + name); 변경
	</pre>

	<h4>if 문으로 확인하는 jsp 예제</h4>

	<pre> 만약에 i가 10보다 크다면  10보다 크다 출력</pre>
	<%
	int i = 0;
	if (i > 10) {
		out.println("i가 10보다 큽니다.");
	} else {
		out.println("i가 10보다 작습니다.");
	}
	%>

	<%
	int a = 0;
	if (a > 10) {
	%>

	<p>a가 10보다 큽니다.</p>
	<%
	} else {
	%>

	<h2>a가 10보다 작습니다.</h2>

	<%
	}
	%>


	<p>
		만약에 b가 1보다 크면 1보다 큽니다. 4~ 5사이에 존재합니다. else if 사용해서
		<%

	%>
		태그 완성 10보다 작습니다.
	</p>


	<%
	int b = 0;
	if (b > 1) {
	%>
	<p>b는 1보다 큽니다.</p>
	<%
	} else if (b >= 4 && b <= 5) {
	%>
	<p>b는 4나 5 사이에 존재합니다.</p>
	<%
	} else {
	%>
	<p>b는 10보다 작습니다</p>
	<%
	}
	%>

</body>
</html>





