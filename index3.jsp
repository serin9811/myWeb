<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--session.invalidate(); --%>
<%--
//1.세션이 있는지 확인한다.
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
}
//2. 세션처리가 끝나면 loginForm으로 이동
--%>	
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<jsp:include page="/menu.jsp" flush="false"/>
</body>
</html>
