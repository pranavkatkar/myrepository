package com;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.annotation.Propagation;  

@Service("ProductService") 
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true) 

public class ProductServiceImpl implements ProductService {
	
	/*@Autowired  
	 private ProductDAO productDao;  
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)  
	public void addProduct(MobileProduct product) {
		// TODO Auto-generated method stub
		
		productDao.addProduct(product);

	}
	
	
	public List<MobileProduct> listProducts() {
		// TODO Auto-generated method stub
		return productDao.listProducts();
	}

	public MobileProduct getProduct(int id) {
		
	 return productDao.getProduct(id);  
	}

	public void deleteProduct(MobileProduct mobile) {
		productDao.deleteProduct(mobile);

	}*/
	@Autowired
	ProductDAO productDao;
	public ProductServiceImpl() {
		// TODO Auto-generated constructor stub
	}
    
	public void addProduct(Product p) {
		productDao.addProduct(p);
	}

	public void deleteProduct(String prodid) {
		// TODO Auto-generated method stub
		productDao.deleteProduct(prodid);
	}

	@Override
	public List<Product> getList() {
		return productDao.getList();
	}

	@Override
	public void updateProduct(Product p) {
		productDao.updateProduct(p);
		
	}

	@Override
	public Product getProductbyId(String prodid) {
		// TODO Auto-generated method stub
		
		Product p=productDao.getProductbyId(prodid);
		return p;
	}
	
	@Override
	public List <Product> getList1(String subctg)
	{
		List<Product> p=productDao.getList1(subctg);
		return p;
	}


}
