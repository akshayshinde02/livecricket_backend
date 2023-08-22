<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"],
        input[type="date"],
        input[type="number"],
        textarea,
        input[type="tel"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        button[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        button[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>

<body>
 <%
        int id = Integer.parseInt(request.getParameter("id"));
    %>

<div class="container">

	<h1>New Customer Details</h1>
	
	<form method="post" action="update">
	
	<label> Customer Id</label>
	<input type="text" name="id" value=<%= id %>><br>
	
	<label>Customer First Name</label>
	<input type="text" name="fname" placeholder="Enter Customer First Name " required><br>
	
	<label>Customer Last Name</label>
	<input type="text" name="lname" placeholder="Enter Customer Last Name " required><br>
	
	<label>Street</label>
	<input type="text" name="street" placeholder="Enter Street "><br>
	
	<label> Address</label>
	<input type="text" name="address" placeholder="Enter Address "><br>
	
	<label>City</label>
	<input type="text" name="city" placeholder="Enter City "><br>
	
	<label>State</label>
	<input type="text" name="state" placeholder="Enter State "><br>
	
	<label>Email</label>
	<input type="text" name="email" placeholder="Enter Email "><br>
	
	<label>Phone Number</label>
	<input type="text" name="phone" placeholder="Enter Phone Number "><br>
	
	
	
	 <button type="submit" >Submit</button>
	</form>



</div>

</body>


<script>



</script>
</html>