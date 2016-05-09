package com;

import java.util.*;



	public interface ProductDAO  {  
		   
		 public void addProduct(MobileProduct product);  
		  
		 public List<MobileProduct> listProducts();  
		   
		 public MobileProduct getProduct(int empid);  
		   
		 public void deleteProduct(MobileProduct employee);  
		}  
	
	

