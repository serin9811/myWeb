<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--session.invalidate(); --%>
<%
String stateOfLog=request.getParameter("stateOfLog");
String name = (String) session.getAttribute("id");
//세션에 세션 id가 있다면(==이미 로그인이 되어있음)
if(name != null){
	stateOfLog= "Sign out";
}
//세션에 세션id가 없다면(==로그인 되어있지 않음)
else {
	stateOfLog="Sign in";
}
%>
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

<script>
// Add active class to the current button (highlight it)
var header = document.getElementById("topnav");
var menu = header.getElementsByClassName("menu");
for (var i = 0; i < menu.length; i++) {
  menu[i].addEventListener("click", function() {
  var current = document.getElementsByClassName("active");
  current[0].className = current[0].className.replace(" active", "");
  this.className += " active";
  });
}
</script>

	<div class="topnav">
		<a href="index.jsp" class="menu active">Home</a> 
		<a href="board.jsp" class="menu" >Board</a>
		<a href="lecture.jsp" class="menu">Lecture</a>
		<a href="loginForm.jsp" class="menu"><%=stateOfLog%></a>
	</div>
	

</body>
</html>
