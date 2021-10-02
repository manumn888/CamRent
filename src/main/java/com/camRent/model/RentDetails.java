package com.camRent.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "rentdetails")
public class RentDetails {
	
	@Id
	@GeneratedValue(generator = "increment")
	private Integer Id;
	private String name;
	private String mobile;
	private String address;
	private Integer amount;
	private String issuedby;
	private String date;
	private String amountcollectedBy;
	
	
	public Integer getId() {
		return Id;
	}
	public void setId(Integer id) {
		Id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public String getIssuedby() {
		return issuedby;
	}
	public void setIssuedby(String issuedby) {
		this.issuedby = issuedby;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getAmountcollectedBy() {
		return amountcollectedBy;
	}
	public void setAmountcollectedBy(String amountcollectedBy) {
		this.amountcollectedBy = amountcollectedBy;
	}
	
	

}
