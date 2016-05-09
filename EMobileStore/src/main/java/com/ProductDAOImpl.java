package com;

import java.util.List;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Repository("ProductDAO")
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	
	SessionFactory sessionFactory;
	 @Transactional(propagation = Propagation.REQUIRED, readOnly = false) 
	public void addProduct(MobileProduct product) {
		
		sessionFactory.getCurrentSession().save(product);
		
		System.out.println("hi");
	

	}
	 @SuppressWarnings("unchecked") 
	public List<MobileProduct> listProducts() {
		// return (List<MobileProduct>) sessionFactory.getCurrentSession().createCriteria(MobileProduct.class).list(); 
		 System.out.println("in session");
	return	(List<MobileProduct>) sessionFactory.openSession().createQuery("from MobileProduct").list();
	}

	public MobileProduct getProduct(int id) {
		Session session = this.sessionFactory.openSession();      
        MobileProduct p = (MobileProduct) session.load(MobileProduct.class, new Integer(id));
        
        return p;  
	}

	public void deleteProduct(MobileProduct mobile) {
		sessionFactory.openSession().createQuery("DELETE FROM MobileProduct WHERE id = "+mobile.getId()).executeUpdate();
		

	}

}
