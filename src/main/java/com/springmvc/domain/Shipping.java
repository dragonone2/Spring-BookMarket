package com.springmvc.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
public class Shipping implements Serializable{
	
	 private static final long serialVersionUID = 8121814661110003493L;
	 
	 
	private String name;        //硅价 绊按疙
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date date;          //硅价老
	private Address address;   //硅价 林家 按眉
	
	
	public Shipping() {
		this.address = new Address();
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	
	
}
