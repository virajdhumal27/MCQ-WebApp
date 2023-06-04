package com.viraj.mcq.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.viraj.mcq.entity.QuestionsEntity;
import com.viraj.mcq.exchanges.McqResponse;
import com.viraj.mcq.repository.McqRepository;

@Service
public class McqServiceImpl implements McqService {

	@Autowired
	private McqRepository repository;
	@Override
	public McqResponse getTenQuestions() {
		McqResponse response = new McqResponse(repository.findAll());
		return response;
	}

}
