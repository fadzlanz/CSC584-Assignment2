<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Student Profiles</title>

    <!-- Font Awesome -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        body {
            font-family: "Roboto", Arial, sans-serif;
            background: #f2f6fc;
            padding: 40px;
        }

        .container {
            width: 900px;
            margin: auto;
            background: #fff;
            padding: 25px 30px;
            border-radius: 12px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        h1 {
            text-align: center;
        }

        .subtitle {
            text-align: center;
            font-size: 14px;
            color: #666;
            margin-bottom: 20px;
        }

        .search-box {
            text-align: center;
            margin-bottom: 20px;
        }

        .search-box input {
            padding: 8px;
            width: 260px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }

        .search-box button {
            padding: 8px 14px;
            background: #007bff;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        .search-box button:hover {
            background: #0056b3;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }

        th {
            background: #007bff;
            color: white;
            padding: 12px;
            text-align: left;
        }

        td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        tr:hover {
            background: #f1f5ff;
        }

        .actions {
            margin-top: 25px;
            text-align: center;
        }

        .actions a {
            display: inline-block;
            margin: 5px;
            padding: 10px 16px;
            background: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 6px;
            font-size: 14px;
        }

        .actions a:hover {
            background: #0056b3;
        }
    </style>
</head>

<body>
<div class="container">

    <h1><i class="fa-solid fa-users"></i> Student Profiles</h1>
    <p class="subtitle">Search profile by <b>Name</b> or <b>Student ID</b></p>

    <div class="search-box">
        <form method="get" action="ViewProfilesServlet">
            <input type="text" name="search"
                   placeholder="Enter name or student ID">
            <button type="submit">
                <i class="fa-solid fa-magnifying-glass"></i> Search
            </button>
        </form>
    </div>

    <table>
        <tr>
            <th>Full Name</th>
            <th>Student ID</th>
            <th>Program</th>
            <th>Email</th>
            <th>Hobbies</th>
        </tr>

        <c:if test="${empty profiles}">
            <tr>
                <td colspan="5" style="text-align:center; padding:15px;">
                    No records found
                </td>
            </tr>
        </c:if>

        <c:forEach var="p" items="${profiles}">
            <tr>
                <td>${p.name}</td>
                <td>${p.studentId}</td>
                <td>${p.program}</td>
                <td>${p.email}</td>
                <td>${p.hobbies}</td>
            </tr>
        </c:forEach>
    </table>

    <div class="actions">
        <a href="index.html">
            <i class="fa-solid fa-arrow-left"></i> Back to Registration
        </a>
    </div>

    <p style="text-align:center; margin-top:15px; font-size:12px; color:#777;">
        Assignment 2 • CSC584 Enterprise Programming
    </p>

</div>
</body>
</html>
