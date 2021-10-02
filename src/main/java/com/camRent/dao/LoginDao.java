package com.camRent.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.camRent.model.LoginDetails;

public interface LoginDao extends JpaRepository<LoginDetails, String>  {
	
	@Query("from LoginDetails where userid=?1 and password=?2")
	LoginDetails getById(String id, String password);
	
}
