package com.viraj.mcq.services;

import java.util.List;

import com.viraj.mcq.entity.QuestionsEntity;
import com.viraj.mcq.exchanges.McqResponse;

public interface McqService {
	McqResponse getTenQuestions();
}
