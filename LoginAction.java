package com.codechobo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginAction")
public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id= request.getParameter("id");
		String pwd= request.getParameter("pwd");
		
		//1.아이디와 비밀번호가 일치하는 지 확인한다.
		//1.1아이디와 비밀번호가 일치한다면 
		if(id.equals("s")&& pwd.equals("123")) {
			//1.1.1 세션을 만들어
			HttpSession session = request.getSession();
			session.setAttribute("id", "s");
			System.out.println("세션생성완료");
			System.out.println("로긴성공~");
			
//			<GET 방식>			
//			//1.1.2 그리고 그 전 경로로 보내기 위해 msg를 체크한다.
//			String msg=request.getParameter("msg");
//			
//			//저장한 경로가 빈문자열(=어딘가를 통하지 않고 바로 로그인폼으로 로그인 시도한 경우)
//			if(msg ==null || msg.equals("")) {
//				System.out.println("url msg="+msg);
//				response.sendRedirect("http://localhost/index.jsp");
//			}
//			//저장한 경로가 있으면(어딘가를 통해 로그인폼으로 로그인을 시도한 경우)
//			else {
//				System.out.println("저장경로가 있을 때 url msg="+msg);
//				//해당 url로 이동
//				response.sendRedirect(msg);
//			}
			
//			<POST 방식>
			String referer= request.getHeader("referer");
			System.out.println(referer);
			String req=request.getRequestURI();
			System.out.println("requestURL="+req);
			//통해온 경로로 보내벌이기
			if(referer != null) {
				response.sendRedirect(referer);
			}
		}
		//1.2 아이디와 비밀번호가 일치하지 않는다면 
		else {
			//1.2.1. 로그인 폼으로 돌려보낸다.
			System.out.println("로긴 실패 ");
			String redirectURL = "http://localhost/loginForm.jsp";
			response.sendRedirect(redirectURL);
		}
	}
	
	//post방식으로 값 전달
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
