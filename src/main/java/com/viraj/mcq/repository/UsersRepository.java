package com.viraj.mcq.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.viraj.mcq.entity.UserEntity;

public interface UsersRepository extends JpaRepository<UserEntity, Integer>{
	UserEntity findByUsername(String username);
}
