<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 1500px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }
  </style>
</head>
<body>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav">
      <br>
      <ul class="nav nav-pills nav-stacked">
        <li><a href="home.jsp">Home</a></li>
        <li class="active"><a href="search.jsp">Search</a></li>
        <li><a href="photos.jsp">Photos</a></li>
      </ul><br>
    </div>

    <div class="col-sm-9">
      <h4><small>Saurabh Chalke - Servlet/JSP Assignment</small></h4>
      <hr>
      <h2>Mini Accolite University</h2><br>
      <br>
      <div style="text-align:center">
      <table class="table table-striped" style="text-align:center">
        <tr align="center"><th align="center">Student ID</th><th align="center">Student Name</th><th align="center">Joining Date</th><th align="center">Dept Name</th></tr>
		<c:forEach items="${ilist}" var="st">
			<tr><td>${st.studentId} </td>
			<td>${st.studentName} </td>
			<td>${st.studentDate} </td>
			<td>${st.studentDept} </td></tr>
		</c:forEach>
		</table>
      </div>    
      

    </div>
  </div>
  </div>

<footer class="container-fluid" style="text-align:center">
  <p>Saurabh Chalke | Accolite 2018</p>
</footer>

</body>
</html>
