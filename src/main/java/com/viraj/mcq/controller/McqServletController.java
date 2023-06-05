package com.viraj.mcq.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.viraj.mcq.services.McqService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/attempt")
public class McqServletController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private McqService service;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		if(session.getAttribute("username") == null) {			
			response.sendRedirect("/login");
		}
		else {
			request.setAttribute("questions", service.getTenQuestions());
			request.getRequestDispatcher(JspFileResolver.getJspFile("mcq.jsp")).forward(request, response);
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer score = 0;
		
		HttpSession session = request.getSession();
		
		List<Integer> correctAnswers = (List<Integer>)session.getAttribute("correct_answers");
		for(int i = 0; i < correctAnswers.size(); i++) {
			Integer chosen = Integer.parseInt(request.getParameter("question" + i).toString());
			
			if(correctAnswers.get(i) == chosen) {
				score++;
			}
		}
		
		System.out.println("Score: " + score);
		session.setAttribute("score", score);
		request.getRequestDispatcher(JspFileResolver.getJspFile("result.jsp")).forward(request, response);;
	}

}
