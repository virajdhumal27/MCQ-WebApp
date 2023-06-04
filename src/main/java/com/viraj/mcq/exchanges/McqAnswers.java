package com.viraj.mcq.exchanges;

import java.util.HashMap;
import java.util.Map;

public class McqAnswers {
	private Map<Integer, Integer> answers;

	public McqAnswers() {
		this.answers = new HashMap<>();
	}
	
	public McqAnswers(Map<Integer, Integer> answers) {
		this.answers = answers;
	}

	public Map<Integer, Integer> getAnswers() {
		return answers;
	}

	public void setAnswers(Map<Integer, Integer> answers) {
		this.answers = answers;
	}
	
	public void addAnswer(Integer qid, Integer option) {
		answers.put(qid, option);
	}
}
