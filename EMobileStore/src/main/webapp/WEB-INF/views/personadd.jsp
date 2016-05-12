

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  
    pageEncoding="ISO-8859-1"%>  
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
 <head>  
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
  <title>Spring MVC Form Handling</title> 
  <head>
 <title>Bootstrap Example</title>
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
 
</head> 
 </head>  
 <body>  
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">My Mobile Shopee</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
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
  <h2>Add Employee Data</h2>  
  
  <form:form method="GET" action="personsave" align="center">  
      <table class="table">  
       <tr>  
       
           <td><form:label path="username">username</form:label></td>  
           <td><form:input path="username" value="${person.username}" readonly="false" type="name" required="true"/></td>
           <td><form:errors path="username" cssStyle="color: #ff0000;"/></td>
         
             
       </tr>  
       <tr>  
       	
           <td><form:label path="password">password:</form:label></td>  
           <td align="left"><form:input path="password" value="${person.password}" type="password" required="true"/></td> 
           <td><form:errors path="password" cssStyle="color: #ff0000;" /></td>
           
       </tr>  
       <tr> 
        
           <td><form:label path="EmailId">EmailId</form:label></td>  
           <td><form:input path="EmailId" value="${person.EmailId}" required="true"/></td> 
           <td><form:errors path="EmailId" cssStyle="color: #ff0000;" /></td>
            
       </tr>  
      
         
       <tr>  
           <td><form:label path="address">Address:</form:label></td>  
                    <td><form:input path="address" value="${person.address}" required="true"/></td> 
                    <td><form:errors path="address" cssStyle="color: #ff0000;" /></td>
                     
       </tr>  
          <tr>  
         <td colspan="2"><input type="submit" value="Submit"/></td>  
        </tr>  
   </table>   
  </form:form>  
 
  
  
  <!--  
  
<html>
<head>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  


</head>
<body>

<div class="container">
    <div class="row">
        <form role="form">
            <div class="col-lg-6">
            <form:form method="GET" action="personsave">
                <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Required Field</strong></div>
                <div class="form-group">
                  <form:label path="username">Enter UserName</form:label>
                    <div class="input-group">
                     <form:input type="text" class="form-control" name="InputName" id="InputName" placeholder="Enter Name" path="username" value="${person.username}" required="true"/>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                  
                <div class="form-group">
                    <form:label path="password">Enter password</form:label>
                    <div class="input-group">
                        <form:input type="password" class="form-control" id="InputPassword First" name="InputPassword" placeholder="Enter Password" path="password" value="${person.password}"  required="true"/>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
               
                
                
                
                <div class="form-group">
                    <form:label path="EmailId">Enter EmailId</form:label>
                    <div class="input-group">
                        <form:input type="Email" class="form-control" id="InputEmailFirst" name="InputEmail" placeholder="Enter Email" path="EmailId" value="${person.EmailId}" required="true"/>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
            
                
                  <div class="form-group">
                    <form:label path="address">Enter address</form:label>
                    <div class="input-group">
                        <form:input type="text" class="form-control" id="InputAddress" name="InputAddress" placeholder="Enter Address" path="address" value="${person.address}" required="true"/>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
               
                <input type="submit" name="submit" id="submit" value="Submit" class="btn btn-info pull-right">
                </form:form>
            </div>
        </form>
       
    </div>
</div>

</body>

</html>  
-->
  
    