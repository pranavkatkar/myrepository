    <%@ page language="java" contentType="text/html; charset=UTF-8"  
     pageEncoding="UTF-8"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
    <html>  
    <head>  
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
      <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <title></title>  
    </head>  
    <body>
    
    <jsp:include page="nav.jsp" flush="true"/>  
     <center>  
     
      
      
      <c:if test="${!empty productList}"> 
      <div class="container"> 
       <table class="table">  
       <thead>
        <tr  
         style=" text-align: center;"  
         height="40px">  
           
         <td>Product Name</td> 
      <!--    <td>Product Price</td>  
         <td>Product Quantity</td>   -->
         <td>Product Category</td>  
         <td>Product SubCategory</td>  
         <td>Product Image</td>  
         <td>Edit</td>  
         <td>Delete</td>   
          <td>View Record</td> 
        </tr>  
        </thead>
        <c:forEach items="${productList}" var="prod">  
         <tr  
          style="background-color: white; color: black; text-align: center;"  
          height="30px">  
            
          <td><c:out value="${prod.pname}" />  
          </td>  
        <%--   <td><c:out value="${prod.price}" />  
          </td>  
          <td><c:out value="${prod.pqty}" />  
          </td>   --%>
          <td><c:out value="${prod.ctg}" />
            
          </td>  
          
          <td><c:out value="${prod.subctg}" />
            
           </td> 
           <td>
           <!--   <c:out value="${prod.fpath}"/>-->
          <img src="${prod.fpath}" height="200" width="100">
          
          </td>  
          <td width="50"><a href="<c:url value="/Edit?id=${prod.prodid}"/>" >Edit </a></td>  
          <td width="50"><a href="<c:url value="/delete?id=${prod.prodid}"/>">Delete</a></td>
            <td width="50"><a href="<c:url value="/ViewRecord?id=${prod.prodid}"/>">View Record</a></td>  
         </tr>  
        </c:forEach>  
       </table>
       </div>  
      </c:if>
      
     
      
      
     
     </center>  
    </body>  
    </html>  


