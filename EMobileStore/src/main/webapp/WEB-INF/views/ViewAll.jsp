    
    
     
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
            <li><a href="<c:url value='/ViewSearch?subctg=Nokia'/>">Nokia</a></li>
            <li><a href="<c:url value='/ViewSearch?subctg=Samsung'/>">Samsung</a></li>
            <li><a href="<c:url value='/ViewSearch?subctg=Micromax'/>">Micromax</a></li> 
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


