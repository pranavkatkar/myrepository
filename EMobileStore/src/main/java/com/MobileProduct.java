package com;
import javax.persistence.*;

@Entity
@Table
public class MobileProduct {

    @Id
    @GeneratedValue
	Integer id;
    @Column
	String name;
    
    @Column
	Integer price;
	
	public MobileProduct()
	{
		
	}
	

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}
	
	
	

}
