<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>all worker</title>

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Poppins:wght@600;700&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/css/style.css" rel="stylesheet">
    <style>
    body{
    padding:5px;
    }
    .box{
    width:200px;
    margin-right:10px;
    border:1px solid orange;
    }
    .container{
    display:flex;
    
    }
    h1{
    margin:0 auto;
    width:360px;
    background-color:orange;
    padding:5px;
    }
    .nav{
    display:flex;
    
    }
    .search{
      float: right;
  padding: 6px;
 
  margin-top: 8px;
  margin-right: 16px;
  font-size: 17px;
    }
    </style>
</head>
<body>
<div class="nav">

<h1> PalTach Workers </h1>


</div>
<div class="container">
      <c:forEach var="w" items="${allworkers}">
   <div class="box" >
                        <img class="img-fluid" style="width:100%; height:125px;"  src="${w.pic }" alt="">
                        <div class="service-text position-relative text-center h-100 p-4">
                            <h5 class="mb-3">${w.firstName } ${w.lastName }</h5>
                            <p>${w.profession } in ${w.workerAddress }</p>
                            <a class="small" href="/worker/${w.id}">More about ${w.firstName }<i class="fa fa-arrow-right ms-3"></i></a>
                        </div>
                    </div>
             </c:forEach>
                
</div>
                
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>
</html>
