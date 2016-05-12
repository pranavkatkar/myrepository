package com.Register;

import java.util.List;

public interface PersonService {
	 public void addPerson(Person person);  
	  
	 public List<Person> listpersons();  
	   
	 public Person getPerson(int usename);  
	   
	 public void deletePerson(Person person);
	 
	 public boolean checkLogin(String username,String password); 
}
