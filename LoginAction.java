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
			//1.1.2 그리고 그 전 jsp로  돌려보낸다.
			System.out.println("로긴성공~");
			//전 jsp에서 세션에 저장한 url을 가져온다.
			String url=(String)session.getAttribute("url");
			//저장한 url이 있으면
			if(url !=null) {
				System.out.println(url);
				//해당 url로 이동
				response.sendRedirect(url);
				
			}
			//저장한 url이 없으면
			else {
				response.sendRedirect("/index.jsp");
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
}
