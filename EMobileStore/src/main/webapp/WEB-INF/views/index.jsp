<html>
<head>
 <title>Bootstrap Example</title>
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
            <li><a href="<c:url value='/ViewSearch?subctg=Microsoft'/>">Microsoft</a></li>
            <li><a href="<c:url value='/ViewSearch?subctg=Samsung'/>">Samsung</a></li>
            <li><a href="<c:url value='/ViewSearch?subctg=Micromax'/>">Micromax</a></li> 
            <li><a href="<c:url value='/ViewSearch?subctg=iphone'/>">iphone</a></li> 
            <li><a href="<c:url value='/ViewSearch?subctg=lecco'/>">lecco</a></li> 
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

<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox" style="margin-left:24%">
    <div class="item active" >
      <img src="resource/m4.jpg" alt="Chania" class="responsive">
    </div>

    <div class="item " >
      <img src="resource/m1.jpg" alt="Chania" class="responsive">
    </div>

    <div class="item " >
      <img src="resource/m2.jpg" alt="Flower"  class="responsive">
    </div>

    <div class="item">
      <img src="resource/m3.jpg" alt="Flower" class="responsive">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  </div>
  

<div class="container-fluid text-center">
  <h2>SERVICES</h2>
  <h4>What we offer</h4>
  <br>
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-off logo-small"></span>
      <h4>POWER</h4>
      <p>High Speed octa core processors</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-heart logo-small"></span>
      <h4>LOVE</h4>
      <p>Happy and safe shopping EveryTime</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-lock logo-small"></span>
      <h4>JOB DONE</h4>
      <p>24X7 customer care</p>
    </div>
    </div>
    <br><br>
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-leaf logo-small"></span>
      <h4>GREEN</h4>
      <p>Energy efficient devices</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-certificate logo-small"></span>
      <h4>CERTIFIED</h4>
      <p> Qulcomn Certified professionals at your service</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-wrench logo-small"></span>
      <h4>HARD WORK</h4>
      <p>Thirve for customer satisfication</p>
    </div>
  </div>
</div>
</body>
</html>
