<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>햄버거 가게</title>
</head>
<body>
	<h1>햄버거가게</h1>
	<h2>햄버거 조회하기</h2>
	<table border="1">
		<thead>
			<tr>
				<th>ID</th>
				<th>햄버거이름</th>
				<th>햄버거가격</th>
				<th>햄버거설명</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="hamburger" items="${ham}">
				<tr>
					<td>${hambuger.id}</td>
					<td>${hambuger.hname}</td>
					<td>${hambuger.hdescription}</td>
					<td>${hambuger.hprice}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<h2>햄버거 저장하기</h2>
	<form action="/api/add" method="post">
		햄버거이름 : <input type="text"   name="hname" /> 
		햄버거가격 : <input type="number" name="hprice" /> 
		햄버거설명 : <input type="text"   name="hdescription" /> 
		저장하기   : <input type="submit" value="햄버거 저장 버튼" />
	</form>

</body>
</html>