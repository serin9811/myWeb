<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%session.invalidate(); %>	
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.topnav {
	overflow: hidden;
	background-color: #333;
}

.topnav a {
	float: left;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}

.topnav a.active {
	background-color: #4CAF50;
	color: white;
}
</style>
</head>
<body>

	<div class="topnav">
		<a class="active" href="#home">Home</a> 
		<a href="Board.jsp" name="boardNav">Board</a>
		<a href="#contact" name="lecture">Lecture</a>
		<a href="loginForm.jsp" name="stateOfLog">Login</a>
	</div>

	<div style="padding-left: 16px">
		<h2>Good afternoon :)</h2>
	</div>

</body>
</html>
