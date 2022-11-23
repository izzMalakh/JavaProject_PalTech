<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="worker.css">
    <title>Document</title>

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Poppins:wght@600;700&display=swap"
        rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/css/worker.css" rel="stylesheet">
</head>

<body>
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top px-4 px-lg-5 py-lg-0">
        <a href="index.html" class="navbar-brand d-flex align-items-center">
            <h1 class="m-0"><i class="fa fa-building text-primary me-3"></i>PalTech</h1>
        </a>
        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto py-3 py-lg-0">
                <a href="#" class="nav-item nav-link active">Home</a>
                <a href="#" class="nav-item nav-link">About Us</a>
                <a href="#" class="nav-item nav-link">Find Worker</a>
                <a href="#" class="nav-item nav-link">Find Job</a>

                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">New Account</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="/reg/user" class="dropdown-item">User <span style="font-size:0.7rem;">(you can't add
                                work)</span></a>
                        <a href="/reg/worker" class="dropdown-item">Worker</a>

                    </div>

                </div>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Login as</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="/login/user" class="dropdown-item">User </a>
                        <a href="/login/worker" class="dropdown-item">Worker</a>

                    </div>

                </div>
                <a href="#" class="nav-item nav-link">Log Out</a>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="hi d-flex">
            <div class="profile-nav col p-3">
                <div class="panel">
                    <div class="user-heading round">
                        <a href="#">
                            <img src="about.jpg" alt="">
                        </a>
                        <h1>Worker Name</h1>
                        <p>Worker Email</p>
                    </div>

                    <ul class="nav d-flex flex-column ">
                        <li class="active"><a href="#"> <i class="fa fa-user"></i>Profile</a></li>
                        <li><a href="#"> <i class="fa fa-calendar"></i>Work Bookings</a></li>
                        <li><a href="#"> <i class="fa fa-gear"></i>Settings</a></li>
                    </ul>
                </div>
            </div>
            <div class="container mt-5">
             

                <div class="panel-body bio-graph-info">
      

                    
                    <form:form action="/worker/${currentWorker.id}/edit" method="put"
			modelAttribute="currentWorker" >
			
                        <div class="form-group">
                            <form:label path="firstName" for="formGroupExampleInput">First Name:</form:label>
                            <form:input path="firstName" type="text" class="form-control" id="formGroupExampleInput"/>
                            <form:errors class="text-danger" path="firstName" />
                        </div>
                        <div class="form-group">
                            <form:label path="lastName" for="formGroupExampleInput2">Last Name:</form:label>
                            <form:input path="lastName" type="text" class="form-control" id="formGroupExampleInput2"/>
                            <form:errors class="text-danger" path="lastName" />
                        </div>
                    
                    <br>
                  
                        <div class="form-group">
                            <form:label path="mobile" for="formGroupExampleInput">Phone Number:</form:label>
                            <form:input path="mobile" type="text" class="form-control" id="formGroupExampleInput"/>
                            <form:errors class="text-danger" path="mobile" />
                        </div>
                        <div class="form-group d-flex align-items-center">
                            <form:label path="birthDate" for="formGroupExampleInput2">Birthday:</form:label>
                            <form:input path="birthDate" type="date" class="form-control" id="formGroupExampleInput2"/>
                        	<form:errors class="text-danger" path="birthDate" />
                        </div>

                  
                    <br>
                   
                        <div class="form-group">
                            <form:label path="profession" for="formGroupExampleInput">Position:</form:label>
                            <form:input path="profession" type="text" class="form-control" id="formGroupExampleInput"/>
                            <form:errors class="text-danger" path="profession" />
                        </div>
                        <div class="form-group">
                            <form:label path="workerAddress"  for="formGroupExampleInput2">Location:</form:label>
                            <form:input path="workerAddress" type="text" class="form-control" id="formGroupExampleInput2"/>
                            <form:errors class="text-danger" path="workerAddress" />
                        </div>
                  
                    <br>
                    
                        <div class="form-group">
                            <form:label path="email" for="formGroupExampleInput">Email:</form:label>
                            <form:input path="email" type="email" class="form-control" id="formGroupExampleInput"/>
                             <form:errors class="text-danger" path="email" />
                        </div>
                       

                    <br>
                   
                    
                    <div class="d-flex justify-content-end">
                        <button type="submit" class="btn btn-warning">Submit</button>
                    </div>
                    
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
