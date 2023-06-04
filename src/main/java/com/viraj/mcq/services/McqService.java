package com.viraj.mcq.services;

import java.util.List;

import com.viraj.mcq.entity.QuestionsEntity;
import com.viraj.mcq.exchanges.McqResponse;

import jakarta.servlet.http.HttpServletRequest;

public interface McqService {
	McqResponse getTenQuestions();
	
	void saveQuestion(HttpServletRequest request);
}
