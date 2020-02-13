<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Faculty Feedback System</title>
  <meta charset="utf-8"/><header class="container">
<div class="col-sm-4">
  <img class="img-responsive" src="img/logo.jpg" class="img-rounded" alt="" width="150" height="100"> 

</div>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body bgcolor="yellow">



<div class="col-sm-18">
  <h1 class="text-center">CGC Landran</h1>
  
</div>
</header>
<br>

<div class="container">

<h5> The feedback is to be given only for the theory subjects.</h5>
<form class="form-inline" action="stu_feedbackdb.jsp">
<div class="form-group">
  <label for="NameOfProgram">Name Of Program:</label>
  <input type="text" class="form-control" id="NameOfProgram" name="program" required>
</div>
<div class="form-group">
  <label for="Semester">Semester:</label>
  <select class="form-control" id="semester" name="sem" required>
    <option>1</option>
    <option>2</option>
    <option>3</option>
    <option>4</option>
    <option>5</option>
    <option>6</option>
    <option>7</option>
    <option>8</option>
  </select>

</div>
 
<br>

<h5>Please Fill the form from the rating 1-5 for Q1-Q8 for all subjects.</h5>
<h5><strong>Rating:</strong> (1) <mark>Unsatisfactory </mark>(2) <mark>Satisfactory </mark>(3)<mark>Good </mark>(4) <mark>Very Good </mark>(5) <mark>Outstanding </mark></h5>
 
  <div class="page-header"></div>


<h5><strong> FILL IN THE DETAILS OF THE SUBJECT AND THE RESPECTIVE FACULTY</strong></h5>

  <table class="table table-bordered">
    <thead>
      <tr class="something">
        <th class="col-md-1" name="n1">S.No.</th>
        <th class="col-md-5" name="n2">Details</th>
        <th class="col-md-1" name="n3"></th>
       </tr>
    </thead>
    <tbody>
      <tr>
        <td>1.</td>
        <td>Subject Code</td>
        <td><input type="text" class="form-control" name="s1"></td>
      <tr>
        <td>2.</td>
        <td>Subject Name</td>
        <td><input type="text" class="form-control" name="a1"></td>
 <tr>
        <td>3.</td>
        <td>Name Of Faculty</td>
        <td><input type="text" class="form-control" name="name"></td>
        <tr>
        <td>4.</td>
        <td>Id of Faculty</td>
        <td><input type="text" class="form-control" name="id"></td>

     </tbody>
  </table>

<h5><strong> Part I: Imparting of knowledge/ instruction as per curriculum with the prescribed material.<strong></h5>

  <table class="table table-bordered">
    <thead>
      <tr class="something">
        <th class="col-md-1" name="d1">S.No.</th>
        <th class="col-md-5" name="d2">Parameters</th>
        <th class="col-md-1" name="d3"></th>
       </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
     <td>The lectures were well structured and focused as per the course curriculum.</td>
           <td>
   
<div class="radio">
  <label><input type="radio" name="optradio1" value="Unsatisfactory" >1</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio1" value="Satisfactory" >2</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio1" value="Good" >3</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio1" value="Very Good" >4</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio1" value="Outstandind" >5</label>
</div>
   
</td>
      </tr>
      <tr>
        <td>2</td>
        <td>The teacher has fair knowledge of the subject.</td>
         <td>
   
<div class="radio">
  <label><input type="radio" name="optradio2" value="Unsatisfactory" >1</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio2" value="Satisfactory" >2</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio2" value="Good" >3</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio2" value="Very Good" >4</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio2" value="Outstanding" >5</label>
</div>
   
</td>
      <tr>
        <td>3</td>
        <td>Methodology of teaching is stimulating and effective.</td>
            <td>
   
<div class="radio">
  <label><input type="radio" name="optradio3" value="Unsatisfactory" >1</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio3" value="Satisfactory" >2</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio3" value="Good" >3</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio3" value="Very Good">4</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio3" value="Outstanading" >5</label>
</div>
   
</td>
 <tr>
     <td>4</td>
     <td>The teacher spends sufficient time for course coverage as per the syllabus.</td>
    <td>
   
<div class="radio">
  <label><input type="radio" name="optradio4" value="Unsatisfactory" >1</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio4" value="Satisfactory" >2</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio4" value="Good" >3</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio4" value="Very Good" >4</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio4" value="OutStanding" >5</label>
</div>
   
</td>
      </tr>
    </tbody>
  </table>

<h5><strong>  Part II: Participatory and innovative T/L process with material for problem based learning, case studies, group discussion.<strong></h5>

<table class="table table-bordered">
    <thead>
      <tr class="something">
        <th class="col-md-1" name="c1">S.No.</th>
        <th class="col-md-5" name="c2">Questions</th>
        <th class="col-md-1" name="c3"></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>The teacher encourages students to raise pertinent questions and make lectures participative.</td>
            <td>
   
<div class="radio">
  <label><input type="radio" name="optradio5" value="Unsatisfactory" >1</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio5" value="Satisfactory" >2</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio5" value="Good" >3</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio5" value="Very Good" >4</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio5" value="Outstanding" >5</label>
</div>
   
</td>
      
</td>
      </tr>
      <tr>
        <td>2</td>
        <td>The teacher gives assignments and solves typical problems/case studies in the class.</td>
           <td>
   
<div class="radio">
  <label><input type="radio" name="optradio6" value="Unsatisfactory" >1</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio6" value="Satisfactory" >2</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio6" value="Good" >3</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio6" value="Very Good" >4</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio6" value="Outstanding" >5</label>
</div>
   
</td>
    
</td>
      </tr>
     </tbody>
  </table>

<h5><strong>  Part III: Teacher relationship(1st year B.tech can fill Part A OR part B) (All other years and semesters students of all programs should fill part B).<strong></h5>

  <table class="table table-bordered">
    <thead>
      <tr class="something">
        <th class="col-md-1" name="e1">S.No.</th>
        <th class="col-md-5" name="e2">Parameters</th>
        <th class="col-md-1" name="e3"></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td> <p>(i).	The teacher adheres to schedules and enforces discipline.</p>
   
<p>(ii).	The teacher uses latest ICT techniques in the class such as ppt/ohp besides chalk/marker board.</p></td>
           <td>
   
<div class="radio">
  <label><input type="radio" name="optradio7" value="Unsatisfactory" >1</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio7" value="Satisfactory" >2</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio7" value="Good" >3</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio7" value="Very Good" >4</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio7" value="OutStanding" >5</label>
</div>
   
</td>
    </tr>
      <tr>
        <td>2</td>
        <td><p> (i).	 The teacher has enthusiasm and concern for students.</p>
            <p> (ii).	 The teacher shows S/W implementation of problems/ case studies/web study material.</td>
           <td>
   
<div class="radio">
  <label><input type="radio" name="optradio8" value="Unsatisfactory" >1</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio8" value="Satisfactory" >2</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio8" value="Good" >3</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio8" value="Very Good" >4</label>
</div>
<div class="radio">
  <label><input type="radio" name="optradio8" value="Outstanding" >5</label>
</div>
   
</td>
         </tr>
     </tbody>
  </table>
</form>
<input type="submit" class ="btn btn-primary btn-sx">

</div>
</body>
</html>
    