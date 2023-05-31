package com.viraj.mcq.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="questions")
public class QuestionsEntity {
	@Id
	@Column(name="question_id")
	private Integer questionId;
	
	@Column(name="question_desc")
	private String questionDescription;
	
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	
	@Column(name="correct_option")
	private Integer correctOption;
	
	public QuestionsEntity() { }

	public QuestionsEntity(Integer questionId, String questionDescription, String option1, String option2,
			String option3, String option4, Integer correctOption) {
		super();
		this.questionId = questionId;
		this.questionDescription = questionDescription;
		this.option1 = option1;
		this.option2 = option2;
		this.option3 = option3;
		this.option4 = option4;
		this.correctOption = correctOption;
	}

	public Integer getQuestionId() {
		return questionId;
	}

	public void setQuestionId(Integer questionId) {
		this.questionId = questionId;
	}

	public String getQuestionDescription() {
		return questionDescription;
	}

	public void setQuestionDescription(String questionDescription) {
		this.questionDescription = questionDescription;
	}

	public String getOption1() {
		return option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	public String getOption2() {
		return option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	public String getOption3() {
		return option3;
	}

	public void setOption3(String option3) {
		this.option3 = option3;
	}

	public String getOption4() {
		return option4;
	}

	public void setOption4(String option4) {
		this.option4 = option4;
	}

	public Integer getCorrectOption() {
		return correctOption;
	}

	public void setCorrectOption(Integer correctOption) {
		this.correctOption = correctOption;
	}
	
}
