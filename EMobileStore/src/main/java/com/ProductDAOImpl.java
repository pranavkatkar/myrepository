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
	/* @Transactional(propagation = Propagation.REQUIRED, readOnly = false) 
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
*/
	@Autowired
    SessionFactory sessionFactory1;
	public ProductDAOImpl() {
		// TODO Auto-generated constructor stub
	}

	@Transactional
	public void addProduct(Product p) {
		// TODO Auto-generated method stub
         Transaction tx;
		 Session session=sessionFactory.openSession();
        tx=session.beginTransaction();
         session.save(p);
         tx.commit();
         session.close();
		
	}

	@Transactional
	public void deleteProduct(String prodid) {

		Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		  Product p=(Product)session.load(Product.class, prodid);
		  session.delete(p);  
		  tx.commit();  
		
		  session.close();  
		
	}

	@Transactional
	public List<Product> getList() {
		// TODO Auto-generated method stub
		 Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<Product> ProductList = session.createQuery("from Product")  
		    .list();  
		  session.close();  
		  return ProductList;  
		
	}
	@Transactional
	public List<Product> getList1(String subctg)
	{
		 Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<Product> ProductList = session.createQuery("from Product where subctg= '"+ subctg +"'") 
		    .list();  
		  session.close();  
		  return ProductList;  
		
		
	}

	@Transactional
	public void updateProduct(Product p) {
		Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		  session.saveOrUpdate(p);  
		  tx.commit();  
		//  Serializable id = session.getIdentifier(employee);  
		  session.close();  
	}

	@Override
	public Product getProductbyId(String prodid) {
		  Session session = sessionFactory.openSession();  
		  Product prod = (Product) session.load(Product.class, prodid);  
		  return prod;  
	}
}
