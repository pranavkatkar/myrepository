package com.Register;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;

public class PersonBean {
	
	@Size(min=5, max=10, message="Your name should be between 5 - 10 characters.")
	String username;
	@Length(min=5, max=10, message="Password should be between 5 - 10 charactes")
	String password;
	@Pattern(regexp=".+@.+\\..+", message="Wrong email!")
	String EmailId;
	@Size(min=5, max=10, message="Your address should be between 5 - 10 characters.")
	String address;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmailId() {
		return EmailId;
	}
	public void setEmailId(String emailId) {
		EmailId = emailId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
	
	
	
	
	

	
}
