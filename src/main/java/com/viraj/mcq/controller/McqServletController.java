package com.viraj.mcq.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;

import com.viraj.mcq.exchanges.McqResponse;
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		System.out.println(Integer.parseInt(request.getParameter("question1").toString()));
		System.out.println(Integer.parseInt(request.getParameter("question2").toString()));
	}

}
