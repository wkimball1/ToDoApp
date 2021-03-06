<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="ToDo.ManageToDo"%>
<%@ page import="ToDo.ToDoItem"%>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View To Do</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
</head>
<%
  ManageToDo myList = new ManageToDo();
  List<String> newList = new ArrayList<String>();
  newList = myList.viewToDos();

%>
<body>
<div class="container">
 <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="index.jsp">View To Do's</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="addToDo" href="AddToDo.jsp">Add To Do's</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="deleteToDo" href="DeleteToDo.jsp">Delete To Do's</a>
        </li>
      </ul>

    </div>
  </div>
</nav>
 <div class="jumbotron jumbotron-fluid">
 		<div class="container">
    		<h1 class="display-4">View To Do's</h1>
    		<p class="lead">Here is your current to do list.</p>
  		</div>
	</div>

 <%if (newList.size() > 0 && newList != null) { %>
	<table class="table">
		<thead>
			<tr>
            	<th scope="col">To Do's</th>
       		 </tr>
		</thead>
		<tbody>
				<% for(int i = 0; i < newList.size(); i++) { %>
				 	<tr>
						<td><%= (newList.get(i)) %></td>
					</tr>
				<% } %>
					
		</tbody>
	</table>
 <% }
 else { %>
   <h2>The to do list is empty please <a href="AddToDo.jsp">add to do's</a></h2>
 <% } %>
 </div>
 
  	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"  ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"  ></script>
</body>
</html>