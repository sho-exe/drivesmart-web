<%-- 
    Document   : index
    Created on : 16 Jun 2026, 1:56:48 PM
    Author     : MP2-4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DriveSmart - Landing Page</title>
        <style>

            a {
                background-color: cyan;
                padding: 20px;
                border-radius: 20px;
                text-decoration: none;

            }
        </style>
    </head>
    <body>

    <center>
        <%@ include file = "header.html" %>

        <h1>Welcome to DriveSmart Academy!</h1>

        <a href="book_session.jsp">Booking Form</a>


        <a href="ScheduleServlet">View Schedule Dashboard</a>

        <br>
        <br>
        <br>
    </center>
    <%@ include file = "footer.jsp" %>
</body>
</html>
