<%-- 
    Document   : arithmeticCalculator
    Created on : Jan 28, 2023, 3:22:09 PM
    Author     : Legin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arithmetic Calculator</title>
    </head>
    <body>
        <h1>Arithmetic Calculator</h1>
        <form action="aritmetic" method="post">
            First: <input type="text" name="first" value="${first}"> <br>
            Second: <input type="text" name="second" value="${second}"> <br>
            <input type="submit" name="cal" value="+">
            <input type="submit" name="cal" value="-">
            <input type="submit" name="cal" value="*">
            <input type="submit" name="cal" value="%">
            
            <p>Result: ${result}</p>
            <a href="age">Age Calculator</a>
        </form>
    </body>
</html>
