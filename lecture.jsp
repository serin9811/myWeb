<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>

<%--세션에 아이디가 있는 지, 없는 지 먼저 확인--%>
<%-- 
//(1)입력
	//세션에 저장된 id 값을 읽어온다.
//	String name = (String) session.getAttribute("id");
//	String sessionId = "";
//	String stateOfLog="";



//(2)처리
	//2.1.1만약 세션에 저장된 아이디가 없으면 
//	if (name == null) {
		//2.1.2 loginForm으로 보내벌여~
		//<GET방식>>
//		stateOfLog= "sign in";
		//String redirectURL = "http://localhost/loginForm.jsp?msg=http://localhost/board.jsp";
		
//		String requestURI =request.getRequestURI();
//		response.sendRedirect("http://localhost/loginForm.jsp?" +"requestURI");
	}
	//2.2세션에 아이디가 있으면(==이미 로그인 되어있으면) board화면을 뿌려줘뻐려~
//	else {
//		sessionId = name;
//		stateOfLog="sign out";
//	}
--%>

<%--(3)출력 --%>
<!DOCTYPE html>
<html>
<head>
<body>
<jsp:include page="/menu.jsp" flush="false"/>

	<form>
	Hello, this is lecture!
	</form>
</body>
</html>
