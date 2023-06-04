package com.viraj.mcq.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.viraj.mcq.entity.QuestionsEntity;
import com.viraj.mcq.exchanges.McqResponse;
import com.viraj.mcq.repository.McqRepository;

import jakarta.servlet.http.HttpServletRequest;

@Service
public class McqServiceImpl implements McqService {

	@Autowired
	private McqRepository repository;
	@Override
	public McqResponse getTenQuestions() {
		McqResponse response = new McqResponse(repository.findAll());
		return response;
	}
	
	public void saveQuestion(HttpServletRequest request) {
		QuestionsEntity question = new QuestionsEntity();
		
		List<QuestionsEntity>list = repository.findAll();
		question.setQuestionId(list.get(list.size() - 1).getQuestionId() + 1);
		
		question.setQuestionDescription(request.getParameter("ques_desc").toString());
		question.setOption1(request.getParameter("option1").toString());
		question.setOption2(request.getParameter("option2").toString());
		question.setOption3(request.getParameter("option3").toString());
		question.setOption4(request.getParameter("option4").toString());
		question.setCorrectOption(Integer.parseInt(request.getParameter("correct").toString()));
		
		repository.save(question);
	}

}
