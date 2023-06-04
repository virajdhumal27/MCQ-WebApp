package com.viraj.mcq.exchanges;

import java.util.List;

import com.viraj.mcq.entity.QuestionsEntity;

public class McqResponse {
	private List<QuestionsEntity> questions;

	public McqResponse(List<QuestionsEntity> questions) {
		this.questions = questions;
	}

	public List<QuestionsEntity> getQuestions() {
		return questions;
	}

	public void setQuestions(List<QuestionsEntity> questions) {
		this.questions = questions;
	}
}
