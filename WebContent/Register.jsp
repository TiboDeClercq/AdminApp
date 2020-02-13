<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>cgclandran.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Hosting City Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstrap-css -->
<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--// css -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- font -->
<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>
<!-- //font -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/SmoothScroll.min.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
</head>

<body>

<script type="text/javascript" src="jquery.min.js"></script>
<script type="text/javascript">
   $(document).ready(function(){
	   //email validation
	   $("#email").blur(function()
			   { 
		         var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		         var val= $("#email").val();
		         if(val.match(mailformat))
		        	 {
		        	 	$("#e").html("Accepted <img src='good.jpg' height=20px width=20px />");  
		        	 }
		         else
		        	 {
			        	 $("#e").html("Please Enter a valid Email<img src='bad.jpg'  height=20px width=20px />");
		        	     $("#email").focus();
		        	 }
			   });  
	   //uname validation
	   $("#uname").blur(function()
			   {
		         var chno= /^[A-Za-z]+$/; 
		         var val= $("#uname").val();
		         if(val.match(chno))
		        	 {
		        	 	$("#n").html("Accepted <img src='good.jpg' height=20px width=20px />");  
		        	 }
		         else
		        	 {
			        	 $("#n").html("Please Enter a valid Name<img src='bad.jpg'  height=20px width=20px />");
		        	     $("#uname").focus();
		        	 }
			   });
	   //pwd validation
	   $("#pwd").blur(function()
			   {
		         var chno= /^[A-Za-z0-9]+$/; 
		         var val= $("#pwd").val();
		         if(val.length >= 8 && val.match(chno))
		        	 {
		        	 $("#p").html("<h3><font color='red'>Password length must be more then 8 </font></h3>");
		        	 }
		         else
		        	 {
		        	    $("#p").html("<h3><font color='green'>Strong Password</font><h3>");
	        	     $("#pwd").focus();
		        	 }
			   });
   });
  </script>
	<!-- header-top -->
	<div class="header-top">
		<div class="container">
			<div class="w3layouts-address">
				<ul>
					<li><i class="fa fa-mobile" aria-hidden="true"></i> 9958713527,9315142099</li>
					<li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a href="cgc@gmail.com.com"> cgc@gmail.com</a></li>
				</ul>
			</div>
			<div class="agileinfo-social-grids">
				<ul>
					<li><a href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#"><i class="fa fa-rss"></i></a></li>
					<li><a href="#"><i class="fa fa-vk"></i></a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //header-top -->
	<!-- header -->
	<div class="header">
			<div class="container">
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
						<div class="w3layouts-logo">
							<h1><a href="index.html">CGC<span>Landran</span></a></h1>
						</div>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<nav>
							<ul class="nav navbar-nav">
								<li><a href="index.html" class="hvr-sweep-to-bottom">Home</a></li>
								<li class="active"><a href="#" class="dropdown-toggle hvr-sweep-to-bottom" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Login/Signup<span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a class="hvr-sweep-to-bottom" href="login.jsp">Login</a></li>
										<li class="active"><a class="hvr-sweep-to-bottom" href="Register.jsp">SignUp</a></li>          
									</ul>
								</li>
							</ul>
						</nav>
					</div>
					<!-- /.navbar-collapse -->
				</nav>
			</div>
	</div>
	<!-- //header -->
	<!-- about-heading -->
	<div class="about-heading">
		<h2>Registration <span>CGC Landran</span></h2>
	</div>
	<!-- //about-heading -->
	<div class="Registration">
		<div class="container">
			<div class="signin-form profile">
				<h3>Register</h3>
				
				<div class="login-form">
					<form action="signup.jsp" method="post">
						<input type="email" name="email" placeholder="E-mail" required="" id="email" id="e">
						<input type="text" name="name" placeholder="Username" required=""  id="uname" id="n">
						<input type="password" name="password" placeholder="Password" required="" id="pwd" id="p">
						<input type="password" name="password" placeholder="Confirm Password" required="">		
						<input type="date" name="dob" placeholder="D.O.B" required="">
						<input type="submit" value="REGISTER">
					</form>
				</div>
				<p><a href="#"> By clicking register, I agree to your terms</a></p>
			</div>
		</div>
	</div>
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="agile-footer-grids">
				<div class="col-md-4 agile-footer-grid">
					<h4>Helpline <span>Numbers</span></h4>
					<p>* Kotwali (Mohali): 2632005, 2632354<br>* Police Chowki (Kharar): 2632083<br>* Police Beat Box (Landran): 2632082<br>*S.D.M. (Res): 2632698<br>* S.D.M. Court: 2632681<br>* Tourist Office: 2632863<br>* Fire station: 2632100</span></p>
				</div>
				<div class="col-md-4 agile-footer-grid">
					<h4>Twitter <span>Posts</span></h4>
					<ul class="w3agile_footer_grid_list">
						<li>CGC is a leading Indian Institute that offers undergraduate, professional, and graduate students a unique academic environment.</p> <a href="cgc.edu.co.in">cgc.edu.co.in</a>
							<span><i class="fa fa-twitter" aria-hidden="true"></i>seat limited hurry...!!!</span></li>
						
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="copyright">
			<p>© 2019 CGC Landran. All rights reserved | Design by CGC's Students</a></p>
		</div>
	</div>
	<!-- //footer -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
</body>	
</html>