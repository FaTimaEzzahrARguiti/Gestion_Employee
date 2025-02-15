<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Employee List</title>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
        }
        .container {
            background-color: #ffffff;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 2rem;
        }
        h1 {
            color: #343a40;
            margin-bottom: 1.5rem;
            text-align: center;
            font-weight: bold;
        }
        .table {
            margin-top: 1rem;
            border-collapse: separate;
            border-spacing: 0;
            width: 100%;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .table thead {
            background-color: #007bff;
            color: #ffffff;
        }
        .table th, .table td {
            padding: 1rem;
            text-align: center;
            vertical-align: middle;
        }
        .table tbody tr:hover {
            background-color: #f1f1f1;
            transition: background-color 0.3s ease;
        }
        .btn-warning, .btn-danger {
            margin: 0 0.25rem;
            font-size: 0.875rem;
            padding: 0.375rem 0.75rem;
            border-radius: 5px;
        }
        .btn-warning {
            background-color: #ffc107;
            border: none;
        }
        .btn-warning:hover {
            background-color: #e0a800;
        }
        .btn-danger {
            background-color: #dc3545;
            border: none;
        }
        .btn-danger:hover {
            background-color: #c82333;
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
            padding: 0.75rem 1.5rem;
            font-size: 1rem;
            border-radius: 5px;
            margin-top: 1rem;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .actions {
            display: flex;
            justify-content: center;
            gap: 0.5rem;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <h1>Employee List</h1>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Prenom</th>
            <th>Email</th>
            <th>Poste</th>
            <th>Salaire</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="person" items="${ListP}">
            <tr>
                <td>${person.id}</td>
                <td>${person.nom}</td>
                <td>${person.prenom}</td>
                <td>${person.email}</td>
                <td>${person.poste}</td>
                <td>${person.salaire}</td>
                <td class="actions">
                    <a href="update?id=${person.id}" class="btn btn-warning btn-sm">Edit</a>
                    <form action="delete" method="post" style="display:inline;">
                        <input type="hidden" name="id" value="${person.id}">
                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="create" class="btn btn-primary">Add New Employee</a>
</div>
</body>
</html>