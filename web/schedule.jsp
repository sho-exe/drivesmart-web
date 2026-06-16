<%-- 
    Document   : list
    Created on : Jun 16, 2026, 1:16:03 AM
    Author     : sho
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Schedule Lists</title>
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

        <h1>Schedule Lists</h1>
        <a href="index.jsp">Homepage</a>

        <a href="book_session.jsp">Add New Info</a>

        <br/><br/><br/><br/>
        <table border="1">
            <tr>
                <th>ID</th><th>STUDENT NAME</th><th>BRANCH</th><th>LESSON</th><th>STATUS</th>
            </tr>

            <c:forEach var="session" items="${sessionList}">
                <tr>
                    <td>${session.getSessionId()}</td>

                    <td>${session.getStudentName()}</td>
                    <td>${session.getBranchLocation()}</td>
                    <td>${session.getLessonType()}</td>
                    <td>${session.getStatus()}</td>


                </tr>
            </c:forEach>
        </table>
            <jsp:include page="/footer.jsp" />

    </center>

</body>
</html>