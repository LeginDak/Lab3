<%-- 
    Document   : ageCalculator
    Created on : Jan 28, 2023, 3:21:21 PM
    Author     : Legin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Age Calculator</title>
    </head>
    <body>
        <h1>Age Calculator!</h1>
        <form action="age" method="post">
            <lable>Enter your age:</lable>
            <input type="text" name="userAge"><br>
            <input type="submit" value="Age next birthday">
            
            <p>${message}</p>
            <a href="arithmetic">Arithmetic Calculator</a>
        </form>
    </body>
</html>
