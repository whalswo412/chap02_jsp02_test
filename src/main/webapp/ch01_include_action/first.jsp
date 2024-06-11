<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>first.jsp</title>
	<style>
		.container {
			display: flex;
			flex-direction: column;
		}
		.first {
			padding:60px;
			text-align: Left;
			background: #1abc9c;
			color: white;
			font-size: 1em;
		}
	</style>
</head>
<body>
	<h2>jsp:include 액션 태그 예제</h2>
	<div class="container">
		<div class="first">
			<h3>여기는 포함하는 부모 페이지입니다.</h3>
		</div>
		
		<div>
			<jsp:include page="second.jsp" flush="false"></jsp:include>
		</div>
		
		<div class="first">
			<h3>여기는 포함하는 부모 페이지입니다.</h3>
		</div>
	</div>
</body>
</html>