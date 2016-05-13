<html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 <style> 
  .logo-small {
    color: #f4511e;
    font-size: 50px;
}

.logo {
    color: #f4511e;
    font-size: 200px;
}
</style>
  
 
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


</body>
</html>