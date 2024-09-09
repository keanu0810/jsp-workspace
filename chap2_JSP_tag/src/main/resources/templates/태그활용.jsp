<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 태그 설명 및 활용</title>
</head>
<body>
	<h1>JSP 태그 활용</h1>
	<h3> <% %> Java 코드 실행 태그</h3>
	<p> 
	<% %> 안에 java 코드를 넣으면 해당 코드가 서버에서 실행
	웹 브라우저에서 직접 출력되는 것이 아니라, 서버에서 처리를 진행하고 결과를 다시 HTML 태그로 전달해서 보여줌
	대부분의 Java 코드가 허용, 변수를 선언하고 조건문이나 반복문 작성
	</p>
	<% 
	String name = "홍길동";
	out.println(name);
	%>
	<h3> <%= %> Java 표현식의 결과를 HTML로 출력할 때 사용</h3>
	<p>
	위 태그에서 선언한 변수를 다른 태그 안에서 불러오고 싶을 때 주로 사용
	위에서 name을 사용했는데, 그걸 내 태그 안에서도 사용하고 싶어. 위에서 가져와줘
	</p>
	<p> 이름 : <%=name %></p> <!-- 위에서 작성한 name을 여기서도 작성하겠다는 의미 -->
	
	<h3> <%! %>  메서드(= 기능) 에 대한 설정을 작성할 때 사용  </h3>
	<%!
		//주석은 자바와 같음
		// 메서드 선언
		public String getGreeting(){
			return "JSP 세계에 오신 것을 환영합니다.";
		}
	%>
	
	<h2> <%! %>와 <%= %>과 <% %> 를 활용하기</h2>
	<%
		// 위에서 작성한 getGreeting 메서드를 호출해서 결과 출력 
		String greeting = getGreeting();
	%>
	
	<p> 인사말 : <%=greeting %></p>
	
	
</body>
</html>




