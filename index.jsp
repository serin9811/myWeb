<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--session.invalidate(); --%>
<%
//1.세션이 있는지 확인한다.
String signInOut="";
String stateOfLog="";
String name=(String) session.getAttribute("id");
//1.1세션이 없다면(로그아웃 되어있다)
if(name==null){
	//1.1.1 로그인으로 표시
	stateOfLog="Sign in";
	
}
//1.2세션이 있다면(로그인되어있다)
else{
	stateOfLog="Sign out";
	//1.2.1로그아웃을 누르면 세션을 종료
	session.invalidate();

}
//2. 세션처리가 끝나면 loginForm으로 이동
signInOut="/loginForm.jsp";
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

	<div class="topnav">
		<a class="active" href="#home">Home</a> 
		<a href="board.jsp">Board</a>
		<a href="#lecture">Lecture</a>
		<a href=<%=signInOut %>><%=stateOfLog%></a>
	</div>

	<div style="padding-left: 16px">
		<h2>Good afternoon :)</h2>
	</div>

</body>
</html>
