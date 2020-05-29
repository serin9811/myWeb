package com.codechobo;

import java.io.IOException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
 
// Implements Filter class
//@WebFilter(filterName="LogFilter", urlPatterns= { "*.jsp" })
public class LogFilter implements Filter  {
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
	           throws IOException, ServletException {
			System.out.println("로그인 필터링 가동");
	        HttpServletRequest httpRequest = (HttpServletRequest)request;
	        HttpSession session = httpRequest.getSession(true);
	      //  String stateOfLog= request.getParameter("stateOfLog");
	        		
	        // 1. 로그인이 되어 있으면, chain.doFilter(request, response)를 호출해서 서블릿의 service()를 호출.
	        //세션에 세션Id가 있으면 
	        String name = (String) session.getAttribute("id");
	        	if(name != null) {
	        	//	stateOfLog="Sign out";
	        		chain.doFilter(request, response);
	        	}
	        // 2. 로그인이 되어 있지 않으면, loginForm.jsp로 forward하시오. (RequestDispatcher사용)
	        	else {
	        		//stateOfLog="Sign In";
	        		RequestDispatcher reqDis= request.getRequestDispatcher("/loginForm.jsp");
	        		reqDis.forward(request, response);
	        	}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
