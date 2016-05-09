package com;

import java.util.List;

public interface ProductService  {  
	   
	 public void addProduct(MobileProduct product);  
	  
	 public List<MobileProduct> listProducts();  
	   
	 public MobileProduct getProduct(int id);  
	   
	 public void deleteProduct(MobileProduct product);  
	} 

	
	
	

