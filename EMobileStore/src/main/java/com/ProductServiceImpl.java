package com;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.annotation.Propagation;  

@Service("ProductService") 
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true) 

public class ProductServiceImpl implements ProductService {
	
	@Autowired  
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

	}

}
