package com.viraj.mcq.services;

import com.viraj.mcq.exchanges.McqResponse;

import jakarta.servlet.http.HttpServletRequest;

public interface McqService {
	McqResponse getTenQuestions();
	
	void saveQuestion(HttpServletRequest request);
}
