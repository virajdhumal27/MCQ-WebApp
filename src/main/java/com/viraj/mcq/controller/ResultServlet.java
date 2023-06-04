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


@WebServlet("/result")
public class ResultServlet extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 812793314293102916L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		if(session.getAttribute("username") == null) {			
			response.sendRedirect("/login");
		}
		else {
			session.setAttribute("score", request.getAttribute("score").toString());
			request.getRequestDispatcher(JspFileResolver.getJspFile("result.jsp")).forward(request, response);
		}
	}
}