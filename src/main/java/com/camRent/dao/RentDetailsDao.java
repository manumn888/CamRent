package com.camRent.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.camRent.model.RentDetails;

public interface RentDetailsDao extends JpaRepository<RentDetails, Integer> {
	
	@Query("select SUM(r.amount) from RentDetails r where r.amountcollectedBy=?1")
	Integer fetchAmount(String name);
	
	@Query("select SUM(r.amount) from RentDetails r")
	Integer fetchTotalAmount();
	
}
