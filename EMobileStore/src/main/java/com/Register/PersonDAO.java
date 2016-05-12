package com.Register;

import java.util.List;  

  
  
public interface PersonDAO {  
   
 public void addPerson(Person person);  
  
 public List<Person> listpersons();  
 
 public boolean checkLogin(String username,String password);
   
 public Person getPerson(int usename);  
   
 public void deletePerson(Person person);  
}