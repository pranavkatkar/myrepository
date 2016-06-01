package com;

import java.util.List;

public interface ProductService  {  
	   
	 /*public void addProduct(MobileProduct product);  
	  
	 public List<MobileProduct> listProducts();  
	   
	 public MobileProduct getProduct(int id);  
	   
	 public void deleteProduct(MobileProduct product);  */
	public List<Product> getList();
	public void addProduct(Product p);
	public void updateProduct(Product p);
	public void deleteProduct(String prodid);
	public Product getProductbyId(String prodid);
	public List<Product> getList1(String subctg);
	} 

	
	
	

