package com.Register;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;


@Service("personService")  
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true) 
public class PersonServiceImpl implements PersonService {

	
	@Autowired  
	 private PersonDAO personDao; 
	
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)  
	public void addPerson(Person person) {
		
		// TODO Auto-generated method stub
		personDao.addPerson(person);


	}

	@Override
	public List<Person> listpersons() {
		return personDao.listpersons();
	}

	@Override
	public Person getPerson(int username) {
		 return personDao.getPerson(username); // TODO Auto-generated method stub
	
	}
	

	@Override
	public void deletePerson(Person person) {
		personDao.deletePerson(person); 

	}
	@Override
	public boolean checkLogin(String username,String password)
	{
		return personDao.checkLogin(username, password);
	}

}
