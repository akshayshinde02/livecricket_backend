<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.util.List" %>
<%@page import="com.entities.AddCustomer" %>
<%@page import="com.entities.Display" %>
<%@page import="com.entities.Delete" %>

<%
	Display r = new Display();
	List<AddCustomer> cusloyees = r.getAllCustomer();
	
	Delete d = new Delete();
	// d.deletecus(1);
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>

<style>

table {
    width: 100%;
    border-collapse: collapse;
    border: 1px solid #ccc;
}

th, td {
    padding: 10px;
    text-align: left;
    border-bottom: 1px solid #ccc;
}

th {
    background-color: #f2f2f2;
    font-weight: bold;
}

tbody tr:nth-child(even) {
    background-color: #f2f2f2;
}

.uq{
	
	text-align:center;
}

tbody tr:hover {
    background-color: #ddd;
}

 .center-button {
            display: flex;
            justify-content: center;
            margin-top:8px;
        }

</style>

<body>

<h1>Customers Information</h1>

<table border="1" cellspacing="0">
	
		<tr>
		<th>Id</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Street</th>
		<th>Address</th>
		<th>City</th>
		<th>State</th>
		<th>Email</th>
		<th>Phone Number</th>
		<th>Delete/Update</th>

		
		</tr>
		
		<% for(AddCustomer cus : cusloyees)  {%>
		
			<tr>
				<td><%= cus.getId() %></td>
				<td><%= cus.getFirst_name() %></td>
				<td><%= cus.getLast_name() %></td>
				<td><%= cus.getStreet() %></td>
				<td><%= cus.getAddress() %></td>
				<td><%= cus.getCity() %></td>
				<td><%= cus.getState() %></td>
				<td><%= cus.getEmail() %></td>
				<td><%= cus.getPhone() %></td>
				<td>
			<form onsubmit="return confirm('Are you sure you want to delete this Customer?');" action="delete" method="post">
            <input type="hidden" name="cusloyeeId" value="<%= cus.getId() %>" >
            <button type="submit"  class="btn btn-danger">Delete</button>
        		</form><br>
			<form onsubmit="return confirm('Are you sure you want to Update this employee?');" action="newupdate.jsp" method="post">
            <input type="hidden" name="id" value="<%= cus.getId() %>" >
            <button type="submit"  class="btn btn-warning">Update</button>
        		</form>
				
				</td>
				
				
			</tr>
			
		<% } %>
		
		
</table>

<div class="center-button">
                
                <button type="submit" class="btn btn-primary " onclick="fun()">Back</button>
            </div>


<script>
        function goToPage2() {
            // Redirect to page2.jsp when the button is clicked
            window.location.href = "update.jsp";
        }
    
    function fun(){
	
	window.location.href = 'home.jsp';
}
    </script>
    

</body>

</html>