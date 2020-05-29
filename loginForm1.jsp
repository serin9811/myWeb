<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
//<GET방식>
//그 전 경로를 msg로 받아온다.
String msg = request.getParameter("msg");
//그 전에 경로가 없다면 msg가 null일 것이므로 NollPointerException방지를 위해 빈 문자열로 만들어준다. 
if(msg == null){
	msg="";
}

//1.세션을 확인한다.
String name = (String) session.getAttribute("id");
//1.1 세션이 있으면(==이미 로그인 되어있다)
if (name != null) {
	//1.1.1세션을 종료시킨다
	System.out.println("로그아웃!");
	session.invalidate();
	
	//1.1.2세션종료 후에는 홈으로 다시 돌아가게 만듦
	response.sendRedirect("http://localhost/index.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<body>
<form action="/LoginAction">
<%--referer:<label><%=request.getHeader("referer")%></label><br>--%>
<%-- requestURI:<label><%=request.getRequestURI()%></label><br>--%>
ID: <input type="text" name="id"><br>
PWD:<input type="password" name="pwd"><br>
<input type="submit" value="Sign in">
</form>
</body>
</html>
