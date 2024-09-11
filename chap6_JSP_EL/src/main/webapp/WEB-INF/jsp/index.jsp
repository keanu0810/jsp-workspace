<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="a"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP EL 형식 사용하기</title>
</head>
<body>
	<h1>JSP EL 형식 사용 예제</h1>
	<pre>
		JSP EL 형식을 사용해서 자바 코드를 최소화하고 데이터를 쉽게 출력하거나 조작할 수 있음
		EL = Expression Language
		     형식 표현 방법 $ { } (사용방법 : ${username})
		   
		 <%-- <% %> --%> 를 이용해서 자바에서 전달할 값을 설정하고, 설정받은 값을 전달
	</pre>
	<%
	//jsp에서 임의로 사용할 데이터를 설정
	request.setAttribute("username", "홍길동");
	request.setAttribute("age", 20);
	request.setAttribute("balance", 160.88);
	request.setAttribute("fruits", new String[] { "사과", "바나나", "체리" });
	%>
	<!-- 1. 변수 출력 -->
	<p>사용자 이름 : ${username}</p>
	<p>사용자 나이 : ${age}</p>
	<p>사용자 잔고 : ${balance}</p>

	<!-- 2. 배열 출력 -->
	<h3>과일 목록</h3>
	<ul>
		<a:forEach var="fruit" items="${fruits}">
			<li>${fruit}</li> <!--  EL 태그 -->
		</a:forEach>
	</ul>
	<p>EL / JSTL 각각 사용하는 차이</p>
	<pre>
	EL(Expresstion Language)
	목적 : EL은 JSP 페이지에서 요청(request)이나 세션(session)과 같은 데이터를 쉽게 가져와서 출력하는데 주로 사용
	문법 : $ { } 사용해서 값을 출력 
	단점 : 반복문이나 조건문 같은 처리가 불가
	
	JSTL(Javaserver pages Standard Tag Library)
	목적 : JSTL JSP 페이지에서 반복, 조건문, 데이터 포멧팅, 데이터베이스 접근과 같은 작업을 수행할 때 사용
	문법 : prefix="설정한변수명" 설정한변수명:기능작성
		prefix안에 변수명을 설정할 때는 http://java.sun.com/jstl/core 위 주소에서 core로 끝날 때
		마지막에 끝나는 단어 첫 글자를 따서 주로 많이 사용
		c언어가 아님!
	단점 : 문법이 복잡할 수 있음 태그를 익히는데 시간 소요
	</pre>
	
	<h4>request</h4>
	<pre>
	request.setAttribute() : JSP에서 요청(request) 범위에 데이터를 저장하는데 사용되는 메서드
	HttpServletRequest 객체에 저장해서 JSP 페이지 내에서 그 데이터를 다른 페이지로 전달하거나
	그 페이지 내에서 사용할 수 있도록 설정
	문법 예제 : request.setAttribute(String name, 자료형 value)
	name : 데이터를 저장할 때 사용할 Key 나타냄 이 키를 이용해서 나중에 데이터를 가져올 수 있음
	value : 저장할 실제 값(value) 문자열 숫자 배열 객체등 어떤 데이터 유형도 저장할 수 있음 
	</pre>
	
	<h5>request 예제</h5>
	<%
	// 서버에서 데이터를 생성
	String name = "홍길동";
	int age = 20;
	
	// 데이터를 request 객체 저장
	request.setAttribute("username", name); 
	//username 변수명 안에 홍길동 이라는 이름이 저장 저장된 이름을 다른데서 사용
	request.setAttribute("userage", age);
	//userage 변수명 안에 20 이라는 숫자를 저장하고 다른데에서 숫자를 사용
	%>
	
	<!--  JSP 페이지에서 데이터를 EL로 출력 -->
	<p>이름 : ${username}</p>
	<p>나이 : ${userage} </p>
	
	
	<!--  request에 저장된 값을 다른 페이지로 전달해서 출력 -->
	<%
	request.setAttribute("msg", "안녕하세요! index.jsp에서 hello.jsp 으로 데이터 전달해드립니다.");
	
	// hello.jsp 페이지로 데이터 전달
	//dispatcher : 전달자 상태를 전달한다는 의미 보내다 운항관리사 배차원 : dispatcher
	
	// servlet springboot를 사용하지 않을 때 사용하는 방법
	// springboot를 사용해서 controller로 넘겨줄 때는 많이 사용하지 않는 방법
	
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/hello.jsp");
	dispatcher.forward(request, response);
	%>
</body>
</html>









