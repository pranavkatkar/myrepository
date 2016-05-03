<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
  .carousel-inner img {
      width: 20%;
       /* Set width to 100% */
      margin: auto;
      min-height:50px;
  }
  	.navbar
  	{
  		background-color:"yellow";
  	}

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  body {
    background-image: url("shop.jpg");
    background-color: #cccccc;
}
  </style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand"><img src="n1.jpg" height=50 width=50 class="img-responsive" alt="Responsive image"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">home
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
    <li><a href="#">Home</a></li>
    
  </ul>
</div></li>
        <li><div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">About
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
    <li><a href="#">Company</a></li>
    <li><a href="#">Owner</a></li>
    <li><a href="#">vision</a></li>
  </ul>
</div></li>
        <li><div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">products
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
    <li><a href="#">Electronics</a></li>
    <li><a href="#">games</a></li>
    <li><a href="#">mobiles</a></li>
  </ul>
</div></li>
        <li><div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">contacts
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
    <li><a href="#">Local Office</a></li>
    <li><a href="#">International office</a></li>
  
  </ul>
</div></li>
        <li><div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">register
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
    <li><a href="#">India</a></li>
    <li><a href="#">Shrilanka</a></li>
    <li><a href="#">Rest of World</a></li>
  </ul>
</div></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
	<marquee><h1><span class = "label label-default">Hot Deals on Ninja Online Shopping Portal</span></h1></marquee>
		
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
   
    <div class="carousel-inner" role="listbox">
      <div class="item active">
      	
        <img  src="01.jpg" style="height=300px;width=100%"alt="Image"class="img-rounded" alt="Cinque Terre" width="304" height="236">
        <div class="carousel-caption">
          <h3>Sell $</h3>
          <p>5$</p>
        </div>      
      </div>

      <div class="item">
        <img src="02.jpg" style="height=300px;width=100%"alt="Image"class="img-rounded" alt="Cinque Terre" width="304" height="236">
        <div class="carousel-caption">
          <h3> sell $</h3>
          <p>10$</p>
        </div>      
      </div>
       <div class="item">
        <img src="03.jpg" style="height=300px;width=100%"alt="Image"class="img-rounded" alt="Cinque Terre" width="304" height="236">
        <div class="carousel-caption">
          <h3>sell $</h3>
          <p>50$</p>
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
</div>
<div class="row">
    <div class="col-sm-4">
    <div class="thumbnail">
     <img src="ninja.jpg" width="400" height="300">
     <p><strong>l</strong></p>
    </div>
    </div>
    </div>
</body>
