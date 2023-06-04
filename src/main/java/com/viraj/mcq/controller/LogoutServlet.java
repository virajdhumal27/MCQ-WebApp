package com.viraj.mcq.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 8821549256731719239L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().invalidate();
		if(request.getSession().getAttribute("username") == null)
			request.getRequestDispatcher(JspFileResolver.getJspFile("login.jsp"))
				.forward(request, response);
		
		else
			request.getRequestDispatcher(JspFileResolver.getJspFile("login.jsp"))
			.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().invalidate();
		request.getRequestDispatcher(JspFileResolver.getJspFile("login.jsp"))
		.forward(request, response);
	}
}
