<%-- 
    Document   : student-form
    Created on : 16 Jun 2026, 1:57:00 PM
    Author     : MP2-4
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DriveSmart - Book Session</title>
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

        <h1>DriveSmart - Book Session.</h1>
        <a href="index.jsp">Homepage</a>

        <a href="ScheduleServlet">View Schedule Dashboard</a>
        <br>
        <br>
        <br>
    </center>


    <fieldset>
        <form action="BookSessionServlet" method="POST">

            <input type="hidden" name="action" value="insert">
            <label>Student Name</label>
            <input type="text" name="studentName" required>
            <br>
            <label>Branch Location</label>
            <input type="text" name="branchLocation" required>
            <br>
            <label>Lesson Type</label>
            <input type="text" name="lessonType" required>
            <br>

            <input type="submit">



        </form>
    </fieldset>
        <jsp:include page="/footer.jsp" />

</body>
</html>
