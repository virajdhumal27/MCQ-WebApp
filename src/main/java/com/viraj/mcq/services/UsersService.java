package com.viraj.mcq.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.viraj.mcq.entity.UserEntity;
import com.viraj.mcq.repository.UsersRepository;

@Service
public class UsersService {
	
	@Autowired
	private UsersRepository repository;
	
	public boolean validateUser(String username, String password) {
		UserEntity user = repository.findByUsername(username);
		
		if(user != null && user.getUsername().equals(username) && user.getPassword().equals(password)) {
			return true;
		}
		
		return false;
	}
}
