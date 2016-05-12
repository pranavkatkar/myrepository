package com;

import java.util.*;



	public interface ProductDAO  {  
		   
		/* public void addProduct(MobileProduct product);  
		  
		 public List<MobileProduct> listProducts();  
		   
		 public MobileProduct getProduct(int empid);  
		   
		 public void deleteProduct(MobileProduct employee); */ 
		public List<Product> getList();
		public void addProduct(Product p);
		public void updateProduct(Product p);
		public void deleteProduct(String prodid);
		public Product getProductbyId(String prodid);
		public List<Product>getList1(String subctg);

		}  
	
	

