
<%@page import="com.entities.AddCustomer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Details</title>
    <link rel="stylesheet" href="styles.css">
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

tbody tr:hover {
    background-color: #ddd;
}



</style>

<script>
var responseMessage = '<%= request.getAttribute("respMsg") %>';
if(responseMessage==='200'){
alert('Success: '+responseMessage+', Successfully Searched');


}
else{
	alert('Success: '+responseMessage+', Enter Valid Searched !');
setTimeout(function() {
    window.location.href = "search.jsp"; // Redirect to the desired page
}, 1000); 
}
    </script>

<body>
    <div class="container">
        <h1>Employee Details</h1>
       
       
        <% AddCustomer cus = (AddCustomer) request.getAttribute("emp"); %>
         <% if(cus == null)  {%>
         
         <p> No Employee Found in Database</p>
       
			
			<% }else{ %>
			
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
		
		</tr>     
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
		</tr>
		</table>
			
    <%} %>
        
       
    
    </div>
    
    
</body>
</html>
