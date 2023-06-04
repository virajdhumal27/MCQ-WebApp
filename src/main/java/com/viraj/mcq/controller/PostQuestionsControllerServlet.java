package com.viraj.mcq.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;

import com.viraj.mcq.services.McqService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/post_questions")
public class PostQuestionsControllerServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1434402884197262172L;
	
	@Autowired
	private McqService service;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		if(session.getAttribute("username") == null) {			
			response.sendRedirect("/login");
		}
		else {
			request.getRequestDispatcher(JspFileResolver.getJspFile("post_questions.jsp")).forward(request, response);
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		service.saveQuestion(request);
		request.getRequestDispatcher(JspFileResolver.getJspFile("post_questions.jsp")).forward(request, response);
	}
}
