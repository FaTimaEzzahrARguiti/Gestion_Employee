<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Employee</title>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
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
        }
        .form-group label {
            font-weight: bold;
            color: #495057;
        }
        .form-control {
            border-radius: 5px;
            border: 1px solid #ced4da;
            padding: 0.75rem;
        }
        .form-control:focus {
            border-color: #80bdff;
            box-shadow: 0 0 5px rgba(128, 189, 255, 0.5);
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
            padding: 0.75rem 1.5rem;
            font-size: 1rem;
            border-radius: 5px;
            width: 100%;
            margin-top: 1rem;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <h1>Create Employee</h1>
    <form action="create" method="post">
        <div class="form-group">
            <label for="name">Nom:</label>
            <input type="text" class="form-control" name="name" id="name" placeholder="Entrez votre nom">
        </div>
        <div class="form-group">
            <label for="prenom">Prenom:</label>
            <input type="text" class="form-control" name="prenom" id="prenom" placeholder="Entrez votre prénom">
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="text" class="form-control" name="email" id="email" placeholder="Entrez votre email">
        </div>
        <div class="form-group">
            <label for="poste">Poste:</label>
            <input type="text" class="form-control" name="poste" id="poste" placeholder="Entrez votre poste">
        </div>
        <div class="form-group">
            <label for="salaire">Salaire:</label>
            <input type="text" class="form-control" name="salaire" id="salaire" placeholder="Entrez votre salaire">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</body>
</html>