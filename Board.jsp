<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--1.로그인 체크부터 한다. --%>
<%--세션에 아이디가 있는 지, 없는 지 먼저 확인--%>
<%
//1.입력
	//세션에 저장된 id 값을 읽어온다.
String name = (String)session.getAttribute("id");
String sessionId="";
%>

<%
//2.처리
	//2.1.1만약 세션에 저장된 아이디가 없으면 
if(name == null){
		//2.1.2 loginForm으로 보내벌여~
	session.setAttribute("url", "/board.jsp");
	String redirectURL = "http://localhost/loginForm.jsp";
    response.sendRedirect(redirectURL);
	
} 
	//2.2세션에 아이디가 있으면 board화면을 뿌려줘뻐려~
else {
	sessionId= name;
}
%>

<!DOCTYPE html>
<html>
<head>
<body>
Hello <%=sessionId %>, this is board!
</body>
</html>
