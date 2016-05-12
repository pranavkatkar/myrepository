<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
 <%-- <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>"> --%>
 
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">My Mobile Shopee</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="<c:url value='/'/>">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Mobiles
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Nokia</a></li>
            <li><a href="#">Samsung</a></li>
            <li><a href="#">Micromax</a></li> 
          </ul>
        </li>
   
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="<c:url value='/ContactUs'/>">about us
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="<c:url value='/ContactUs'/>">Company</a></li>
            <li><a href="#">Vision</a></li>
            
          </ul>
        </li>
     
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">contacts
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Local Office</a></li>
            <li><a href="#">National Office</a></li>
            <li><a href="<c:url value='/AboutUs'/>">Head Office</a></li> 
          </ul>
        </li>
        
        
         <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="<c:url value='/add'/>">Add Products</a></li>
            <li><a href="<c:url value='/ViewAll'/>">Display products</a></li>
            
             <li><a href="<c:url value='/fileupload'/>">upload image</a></li>
            
          </ul>
        </li>
        
        
      </ul>
    </div>
     <ul class="nav navbar-nav navbar-right">
      <li><a href="<c:url value='/personadd'/>"> <span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="<c:url value='/Login'/>"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>

<div class="container-fluid text-center" >

  
   <h3>Add Product </h3>
    <form:form class="login-form"  method="POST" action="save"  commandName="product" enctype="multipart/form-data">

    <Table class="table" height="" width="80">
    <tr>
    <td>
    <form:label path="prodid">Enter ProductId</form:label></td>
    <td>
     <form:input path="prodid" placeholder="" required="true"/></td></tr>
    <tr>
     <td>
     <form:label path="ctg">Enter Catagory</form:label></td>
     <td>
      <form:input path="ctg" placeholder="" required="true"/></td></tr>
      
      <tr>
      <td>
     <form:label path="subctg">Enter SubCatagory</form:label></td>
     <td>
      <form:input path="subctg" placeholder="" required="true"/></td></tr>
      <tr>
      <td>
      
   		<form:label path="pqty">Enter Quantity</form:label></td>
   		<td>
       <form:input path="pqty" placeholder="" required="true"/></td></tr>
       <tr>
       <td>
    	<form:label path="price">Enter Price</form:label></td>
    	<td>
        <form:input path="price" placeholder="" required="true"/></td></tr>
        <tr>
        <td>
    
      	<form:label path="pname">Enter Model Name</form:label></td>
      	<td>
         <form:input path="pname" placeholder="" required="true"/></td></tr>
        		<tr>
        		<td>
        		<form:label path="file1">Select file to uplaod</form:label></td>
        	<td>
         <form:input type="file" path="file1"  name="file1" id="file1"/></td></tr>
     <%--  Name: <input type="text" name="name"><br /> <br /> 
        <a href="<c:url value="/upload"/>">Upload</a> --%>
     
      
      </Table>
      <input type="submit" value="Add"/>
    
    </form:form>
  </div>


</body>
</html>