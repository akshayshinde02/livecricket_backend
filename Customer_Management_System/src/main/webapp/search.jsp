<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <title>Customer Search</title>
    <link rel="stylesheet" href="styles.css">
</head>

<style>

body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    text-align: center;
    margin-top: 50px;
}

.container {
    width: 300px;
    margin: 0 auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

h1 {
    margin-bottom: 20px;
}

label {
    display: block;
    margin-bottom: 10px;
}

input[type="text"] {
    width: 100%;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin-bottom: 20px;
}

input[type="submit"] {
    width: 100%;
    padding: 10px;
    background-color: #4CAF50;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

.center-button {
            display: flex;
            justify-content: center;
            margin-top:8px;
        }

</style>
<body>
    <div class="container">
        <h1>Customer Search</h1>
        <form action="search" method="post">
            <label for="employeeId">Customer ID:</label>
            <input type="text" id="employeeId" name="employeeId" required>
            <input type="submit" value="Search">
        </form>
        <div id="result"></div>
    </div>
    
    <div class="center-button">
                
                <button type="submit" class="btn btn-primary mt-6" onclick="fun()">Back</button>
            </div>
</body>
<script>
function fun(){
	
	window.location.href = 'home.jsp';
}

</script>
</html>
