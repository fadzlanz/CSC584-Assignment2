<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Profile Saved</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        body {
            font-family: "Roboto", Arial, sans-serif;
            background: #f2f6fc;
            padding: 40px;
        }
        .container {
            width: 500px;
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
        table {
            width: 100%;
            border-collapse: collapse;
        }
        td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
            vertical-align: top;
        }
        td.label {
            font-weight: bold;
            width: 35%;
            background: #f7f9fc;
        }
        td.label i {
            color: #007bff;
            margin-right: 8px;
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
    <h1>Profile Saved</h1>
    <p class="subtitle">Student profile has been saved successfully</p>

    <table>
        <tr>
            <td class="label"><i class="fa-solid fa-user"></i> Full Name</td>
            <td>${profile.name}</td>
        </tr>
        <tr>
            <td class="label"><i class="fa-solid fa-id-card"></i> Student ID</td>
            <td>${profile.studentId}</td>
        </tr>
        <tr>
            <td class="label"><i class="fa-solid fa-graduation-cap"></i> Program</td>
            <td>${profile.program}</td>
        </tr>
        <tr>
            <td class="label"><i class="fa-solid fa-envelope"></i> Email</td>
            <td>${profile.email}</td>
        </tr>
        <tr>
            <td class="label"><i class="fa-solid fa-heart"></i> Hobbies</td>
            <td>${profile.hobbies}</td>
        </tr>
        <tr>
            <td class="label"><i class="fa-solid fa-comment"></i> Introduction</td>
            <td>${profile.introduction}</td>
        </tr>
    </table>

    <div class="actions">
        <a href="index.html">
            <i class="fa-solid fa-arrow-left"></i> Back
        </a>
        <a href="ViewProfilesServlet">
            <i class="fa-solid fa-eye"></i> View All Profiles
        </a>
    </div>

    <p style="text-align:center; margin-top:15px; font-size:12px; color:#777;">
        Assignment 2 • CSC584 Enterprise Programming
    </p>
</div>
</body>
</html>
