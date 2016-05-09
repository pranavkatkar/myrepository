<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  
    pageEncoding="ISO-8859-1"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<title>All Mobiles </title>  
</head>  
<body>  
<h1>List Mobiles</h1>  
  
  
<c:if test="${!empty prdList}">  
 <table align="left" border="1">  
  <tr>  
   <th>Mobile ID</th>  
   <th>Mobile Name</th>  
   <th>Mobile price</th>  
 
  </tr>  
  

  
  <c:forEach items="${prdList}" var="p">  
   <tr>  
    <td><c:out value="${p.id}"/></td>  
    <td><c:out value="${p.name}"/></td>  
    <td><c:out value="${p.price}"/></td> 
     <td align="center"> <a href="<c:url value='/edit?id=${p.id}'/>">Edit</a> | <a href="<c:url value='/delete?id=${p.id}'/>">Delete</a></td> 
   
   </tr>  
  </c:forEach>  
 </table>  
</c:if>  
</body>  
</html>  