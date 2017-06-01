<%-- 
    Document   : Home
    Created on : May 25, 2017, 12:52:07 PM
    Author     : Utkarsh
--%>
<% String str= (String)request.getAttribute("username");
    out.println("Welcome "+str);%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Blog/Home</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="font-awesome-4.7.0/css/font-awesome.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />

<script type="text/javascript" src="js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="js/jquery.cycle2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script>
	$("#carousel").carousel();
</script>


</head>

<body>
<!-- Navigation Bar Main -->
<div class="navbar navbar-default">
	<div class="container-fluid">
    	<div class="navbar-header">
        	<a class="navbar-brand" href="#">Ingenious</a>
            
            <button class="navbar-toggle" data-toggle="collapse" data-target=".navHeaderCollapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
        </div>
        
        <div class="collapse navbar-collapse navHeaderCollapse">
        <ul class="nav navbar-nav">
        	<li><a href="Home.jsp">Home</a></li>
            <li><a href="Editor.html">Blog</a></li>
            <li><a href="#">About Us</a></li>
        </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="Front.html">Logout</a></li>
            </ul>
        </div>
        
    </div>
</div>
<!-- Navigation Bar End -->

<!-- Image slider Start -->

<div id="carousel" class="carousel slide" data-ride="carousel">
    <!-- Menu -->
    <ol class="carousel-indicators">
        <li data-target="#carousel" data-slide-to="0" class="active"></li>
        <li data-target="#carousel" data-slide-to="1"></li>
        <li data-target="#carousel" data-slide-to="2"></li>
    </ol>
    
    <!-- Items -->
    <div class="carousel-inner">
        
        <div class="item active">
            <img src="Images/LoginBackground.png" alt="Slide 1" />
            <div class="container carousel-caption">
            <h2>Thomas Famula:</h2>
            <p>"Clear thinking is not possible without clear writing."</p>
            </div>
        </div>
        <div class="item">
            <img src="Images/LoginBackground.png" alt="Slide 2" />
            <div class="container carousel-caption">
            <h2>E.L.Doctorow:</h2>
            <p>"Writing is an exploration. You start from nothing and learn as you go."</p>
            </div>
        </div>
        <div class="item">
            <img src="Images/LoginBackground.png" alt="Slide 3" />
            <div class="container carousel-caption">
            <h2>Voltaire:</h2>
            <p>"Writing is the painting of the voice!!"</p>
            </div>
        </div>
    </div> 
    <a href="#carousel" class="left carousel-control" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
    </a>
    <a href="#carousel" class="right carousel-control" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
    </a>
</div>


<!-- Image Slider End -->

<!-- Category Menu Start -->

<div class="category navbar navbar-default">
	<div class="container-fluid">
       
        <ul class="nav navbar-nav">
        	<li><a href="#">All</a></li>
            <li><a href="#">Placement</a></li>
            <li><a href="#">Events</a></li>
            <li><a href="#">City</a></li>
        </ul>
        
    </div>
</div>

<!-- Category Menu End -->

<div class="container-fluid">
<!-- Row 1 -->
<div class="row containt">
	<div class="col-xs-12 col-sm-4 col-md-4">
		<div class="thumbnail">
  			<img class="img-responsive" src="Images/placement1.png" alt="Card image cap">
  			<div class="caption">
                            <a href="post.html"><h4 class="card-title">Card title</h4></a>
    			<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  			</div>
		</div>
	</div>
    
    <div class="col-xs-12 col-sm-4 col-md-4">
		<div class="thumbnail">
  			<img class="img-responsive" src="Images/placement2.png" alt="Card image cap">
  			<div class="caption">
                            <a href="post.html"><h4 class="card-title">Card title</h4></a>
    			<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  			</div>
		</div>
	</div>
    
    <!-- Add clearfix for only the required viewport -->
    <div class="clearfix visible-xs"></div>
    
    <div class="col-xs-12 col-sm-4 col-md-4">
		<div class="thumbnail">
  			<img class="img-responsive" src="Images/placement3.png" alt="Card image cap">
  			<div class="caption">
                            <a href="post.html"><h4 class="card-title">Card title</h4></a>
    			<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  			</div>
		</div>
	</div>
    
</div>
<!-- Row 1 End -->

<!-- Row 2 -->

<div class="row containt">
	<div class="col-xs-12 col-sm-4 col-md-4">
		<div class="thumbnail">
  			<img class="img-responsive" src="Images/placement4.png" alt="Card image cap">
  			<div class="caption">
                            <a href="post.html"><h4 class="card-title">Card title</h4></a>
    			<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  			</div>
		</div>
	</div>
    
    <div class="col-xs-12 col-sm-4 col-md-4">
		<div class="thumbnail">
  			<img class="img-responsive" src="Images/placement5.png" alt="Card image cap">
  			<div class="caption">
                            <a href="post.html"><h4 class="card-title">Card title</h4></a>
    			<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  			</div>
		</div>
	</div>
    
    <!-- Add clearfix for only the required viewport -->
    <div class="clearfix visible-xs"></div>
    
    <div class="col-xs-12 col-sm-4 col-md-4">
		<div class="thumbnail">
  			<img class="img-responsive" src="Images/placement6.png" alt="Card image cap">
  			<div class="caption">
                            <a href="post.html"><h4 class="card-title">Card title</h4></a>
    			<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  			</div>
		</div>
	</div>
    
</div>

<!-- Row 2 End -->

<!-- Row 3 -->

<div class="row containt">
	<div class="col-xs-12 col-sm-4 col-md-4">
		<div class="thumbnail">
  			<img class="img-responsive" src="Images/placement7.png" alt="Card image cap">
  			<div class="caption">
                            <a href="post.html"><h4 class="card-title">Card title</h4></a>
    			<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  			</div>
		</div>
	</div>
    
    <div class="col-xs-12 col-sm-4 col-md-4">
		<div class="thumbnail">
  			<img class="img-responsive" src="Images/placement8.png" alt="Card image cap">
  			<div class="caption">
                            <a href="post.html"><h4 class="card-title">Card title</h4></a>
    			<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  			</div>
		</div>
	</div>
    
    <!-- Add clearfix for only the required viewport -->
    <div class="clearfix visible-xs"></div>
    
    <div class="col-xs-12 col-sm-4 col-md-4">
		<div class="thumbnail">
  			<img class="img-responsive" src="Images/placement9.png" alt="Card image cap">
  			<div class="caption">
                            <a href="post.html"><h4 class="card-title">Card title</h4></a>
    			<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  			</div>
		</div>
	</div>
    
</div>

<!-- Row 3 End -->
</div>

<!-- Footer start -->

<footer class="footer">
  <div class="container text-center">
    <a href="#"><i class="fa fa-facebook"></i></a>
    <a href="#"><i class="fa fa-twitter"></i></a>
    <a href="#"><i class="fa fa-linkedin"></i></a>
    <a href="#"><i class="fa fa-google-plus"></i></a>
    <a href="#"><i class="fa fa-skype"></i></a>
  </div>
</footer>

<!-- Footer start -->
</body>
</html>

