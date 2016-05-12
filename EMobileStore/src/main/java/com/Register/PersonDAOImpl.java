package com.Register;

import java.util.List;

import org.apache.catalina.Session;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Repository("personDao")  
public class PersonDAOImpl implements PersonDAO {
	
	@Autowired  
	 private SessionFactory sessionFactory;  

	@Override
	 @Transactional(propagation = Propagation.REQUIRED, readOnly = false) 
	public void addPerson(Person person) {
		// TODO Auto-generated method stub
		
		sessionFactory.getCurrentSession().save(person);  

	}

	@Override
	@SuppressWarnings("unchecked")  
	public List<Person> listpersons() {
		 System.out.println("in session");
			return	(List<Person>) sessionFactory.openSession().createQuery("from Person").list();
	}

	@Override
	public Person getPerson(int username) {
		return null;
		
	}

	@Override
	public void deletePerson(Person person) {
	 

	}
	@Override
	public boolean checkLogin(String username,String password)
	{
		
		/*System.out.println("In Check login");
		Session session = sessionFactory.openSession();
		boolean userFound = false;
		//Query using Hibernate Query Language
		
		
		
		
		String SQL_QUERY =" from Users as o where o.userName=? and o.userPassword=?";
		Query query = session.createQuery(SQL_QUERY);
		query.setParameter(0,userName);
		query.setParameter(1,userPassword);
		List list = query.list();

		if ((list != null) && (list.size() > 0)) {
			userFound= true;
		}

		session.close();
		return userFound;*/
		boolean userFound=false;
		Query query=sessionFactory.openSession().createQuery("from Person as o where o.username=? and o.password=?");
		query.setParameter(0, username);
		query.setParameter(1, password);
		List list = query.list();

		if ((list != null) && (list.size() > 0)) {
			userFound= true;
			
		}
		
		return userFound;
		
		
	}

}
