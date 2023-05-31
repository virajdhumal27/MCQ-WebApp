package com.viraj.mcq.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.viraj.mcq.entity.QuestionsEntity;

public interface McqRepository extends JpaRepository<QuestionsEntity, Integer>{

}
