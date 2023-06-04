package com.viraj.mcq.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "LoginServletController", urlPatterns ="/login")
public class LoginServletController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8500919759788101365L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().invalidate();
		if(request.getSession().getAttribute("username") == null)
			request.getRequestDispatcher(JspFileResolver.getJspFile("login.jsp"))
				.forward(request, response);
		
		else
			request.getRequestDispatcher(JspFileResolver.getJspFile("index.jsp"))
			.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = (String)request.getParameter("username");
		String password = (String)request.getParameter("password");
		
		System.out.println(username + " " + password);
		
		HttpSession session = request.getSession();
		
		session.setAttribute("username", username);
		
		response.sendRedirect("/home");
		
	}

}
