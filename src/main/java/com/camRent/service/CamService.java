package com.camRent.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.camRent.dao.LoginDao;
import com.camRent.dao.RentDetailsDao;
import com.camRent.model.LoginDetails;
import com.camRent.model.RentDetails;

@Service
public class CamService {
	
	@Autowired
	LoginDao loginDao;
	
	@Autowired
	RentDetailsDao rentDetailsDao;
	
	public boolean validateLogin(String name, String pass) {
		
		LoginDetails loginDetails = (LoginDetails) loginDao.getById(name, pass);
		
		if(loginDetails != null) {
			return true;
		}
		return false;
	}
	
	public List<RentDetails> getRecords(){
		return rentDetailsDao.findAll();
	}
	
	public Integer fetchAmount(String name) {
		
		if(rentDetailsDao.fetchAmount(name) == null) {
			return 0;
		}
		return rentDetailsDao.fetchAmount(name);
	}
	
	public Integer fetchToatlAmount() {
		return rentDetailsDao.fetchTotalAmount();
	}
	
	public boolean save(RentDetails rentDetails) {
		
		String mobile = rentDetails.getMobile();
		String start = mobile.substring(0, 3);
		String end  = mobile.substring(8);
		
		mobile = start + "XXXXX" + end;
		
		rentDetails.setMobile(mobile);
		
		if(rentDetailsDao.save(rentDetails) != null) {
			return true;
		}
		return false;
	}

}
