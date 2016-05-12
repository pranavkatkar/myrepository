package com;
import java.io.BufferedOutputStream;

import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.persistence.*;

import org.springframework.web.multipart.MultipartFile;

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
    @Column
    private String fpath;
    
    transient private MultipartFile file1;
    
    
    public String getFpath() {
		return fpath;
	}

	public void setFpath(String fpath) {
		this.fpath = fpath;
	}

	
    
   
	public MobileProduct()
	{
		
	}
	
	public String getFilePath(String path1,String contextPath)
	{
	String fileName=null;
	if(!file1.isEmpty())
	{
	try
	{
	fileName=file1.getOriginalFilename();
	byte[] bytes = file1.getBytes();
	String npath=path1+"\\resource\\images\\"+fileName;
	BufferedOutputStream buffStream = new BufferedOutputStream(new FileOutputStream(new File(npath)));
	buffStream.write(bytes);
	            buffStream.close();
	            String dbfilename=contextPath+"/resource/images/"+fileName;
	            setFpath(dbfilename);
	            return dbfilename;
	}
	catch(Exception e)
	{
	return "You failed to upload "+fileName+" : "+e.getMessage(); 
	}
	}
	else
	{
	return "Unable to upload. File is empty.";
	}
	}
	public MultipartFile getFile1() {
	return file1;
	}
	public void setFile1(MultipartFile file1) {
	this.file1 = file1;
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
