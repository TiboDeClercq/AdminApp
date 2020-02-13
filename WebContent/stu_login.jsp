<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<html>

<head>

<title>

</title>

<meta name="viewport" content="width=device-width, initial-scale=1">


<style>
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

 
 

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}
.container {
    padding: 16px;
}

span.Password {
    float: right;
    padding-top: 16px;
}



/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.Password {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}


</style>



</head>




<title>Login Page</title>
 
 <meta charset="utf-8"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>

<body>


<header class="container">
<div class="col-sm-4">
  
</div>

<div class="col-sm-8">
  <h1 class="text-center">CGC Landran</h1>
 
 
</header>


<body>

<form  method="post" action="logindb.jsp" >
   
<div class="container">
	<br>
	<br>
	<br>
    <label><b>UserName</b></label>
    <input type="text" placeholder="Enter Your Name" name="Username" required>
	<br>
	
<label><b>Password</b></label>

 <input type="password" placeholder="Enter Your Password" name="Password" required><br>
	<br>
 <button type="submit">Login</button>
  
<label>
     
 <input type="checkbox" checked=""> Remember me
    </label>
  </div>
  
  
<div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="Password">Forgot <a href="#">password?</a></span>
  </div>	 
   
</form><%
HttpSession ses=request.getSession();

String v=(String)ses.getAttribute("errorMessage");%>
<%=v%>
</body>

</html>
    