package com.klu.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DAO {
	
	@Autowired
	UserRepository obj;
	
	public void save(User user) {
		 obj.save(user);
	}

}
