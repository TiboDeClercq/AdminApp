<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>
</title>

<style> 
body {font-family: Times New Roman;}
* {box-sizing: border-box}

h1{

 color: #006600 !important;
 font-family: Times New Roman !important;
 font-weight: bold !important;
 
 }
 
small.sub-1{
 color: #000000;
 font-family: Times New Roman;
 font-weight: bold;		
 }

small.sub-2{
 color: #006600;
 font-family: Times New Roman;
 font-weight: bold;	
 }	


 
input[type=text] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus{
    background-color: #ddd;
    outline: none;
}

hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}


/* Float cancel and signup buttons and add an equal width */
.submitbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .submitbtn {
       width: 100%;
    }
}

</style>


</head>
<header>
<title>Registration Page</title>
  <meta charset="utf-8"/>
  <div class="col-sm-4">
  <img class="img-responsive" src="" class="img-rounded" alt="" width="150" height="100"> 

</div>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>

<header class="container">
<div class="col-sm-4">
  <img class="img-responsive" src="img/logo.jpg" class="img-rounded" alt="" width="200" height="200"> 

</div>

<div class="col-sm-8">
  <h1 class="text-center"><b>CGC Landran</b></h1>
  <h2 class="text-center">Feedback Registration Page</h2>
  
</header>



<body>
<form  method="post" action="register1.jsp" >
   <div class="container"> 
   <hr>
   <br>
   <label><b>Name</b></label>
   <input type="text" placeholder="Enter Name" name="name">
 
	<label><b>Password</b></label>
	<input type="password" placeholder="Enter Password" name="password">
 
    <label><b>Roll Number</b></label>  
	<input type="number" placeholder="University Roll Number" name="roll_no">
 
    <label><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" >
      
    <label><b>Phone Number</b></label>
	<input type="number" placeholder="Enter Phone Number" name="phn_no">
  
    <label><b>Semester</b></label> 
	<input type="number" placeholder="Enter current semester" name="semester">
  
    <label><b>Year of admission</b></label> 
	<input type="number" placeholder="yyyy" name="y_o_a">
  
  
	<label><b>Course</b></label>    
	<input type="text" placeholder="Enter course name" name="course">
  <br> 
       <!--Feedback Given:<br>
  <input type="text" name="FeedbackGiven">-->
  
    <br><br>
	<button type="submit" class="submit">Submit</button>
	<br><b>
	<a href= "feedback.jsp">Click here to Login</a>
	</b><br>
	</div>
  
  </form>
</body>
</html>
