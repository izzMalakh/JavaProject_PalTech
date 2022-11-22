<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page isErrorPage="true" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PalTech Home</title>

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
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
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
                <a href="/" class="nav-item nav-link active">Home</a>
                <a href="#aboutus" class="nav-item nav-link">About Us</a>
                <a href="#" class="nav-item nav-link">Find Worker</a>
                                <a href="#" class="nav-item nav-link">Find Job</a>
                <c:if test="${thisuser  == null}">
                
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">New Account</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="/reg/user" class="dropdown-item">User <span style="font-size:0.7rem;">(you can't add work)</span></a>
                        <a href="/reg/worker" class="dropdown-item">Worker</a>
                     
                    </div>
                    
                </div>
                 <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Login as</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="/login/user" class="dropdown-item">User </a>
                        <a href="/login/worker" class="dropdown-item">Worker</a>
                     
                    </div>
                    </c:if>
                </div>
<c:if test="${thisuser  != null}">
		<form id="logoutForm" class="nav-item nav-link" method="POST" action="/logout">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type="submit" value="Logout!" />
       
    </form>
     </c:if>                
                

          
            </div>
        </div>
    </nav>
    
        <div class="container-fluid p-0 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="w-100" src="img/carousel-1.jpg" alt="Image">
                    <div class="carousel-caption">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-12 col-lg-10">
                                <c:if test="${thisuser  != null}">
                                
                                Welcome ${thisuser.firstName }                             
                                </c:if>
                               
                                    <h5 class="text-light text-uppercase mb-3 animated slideInDown">Welcome to PalTech</h5>
                                    <h1 class="display-2 text-light mb-3 animated slideInDown">Palestinian workers community</h1>
                                    <a href="" class="btn btn-primary py-3 px-5">Tips to Get More Customers!</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
              </div>
              </div>
              </div>  
                  <!-- About start -->
              
     <div class="col-lg-6 wow fadeInUp m-5" data-wow-delay="0.5s" id="aboutus">
                    <div class="h-100">
                        <div class="border-start border-5 border-primary ps-4 mb-5">
                            <h6 class="text-body text-uppercase mb-2">About Us</h6>
                            <h1 class="display-6 mb-0">The Goal Of Our WebSite</h1>
                                   
                        </div>
                        <p>The project was built on how difficult it is for people to reach professional workers in Palestine,PalTech was based on facilitating access to workers and communicating with them through their
                        informations</p>
                        <p>  </p>
                        <div class="border-top mt-4 pt-4">
                            <div class="row g-4">
                                <div class="col-sm-4 d-flex wow fadeIn" data-wow-delay="0.1s">
                                    <i class="fa fa-check fa-2x text-primary flex-shrink-0 me-3"></i>
                                    <h6 class="mb-0">Ontime at services</h6>
                                </div>
                                <div class="col-sm-4 d-flex wow fadeIn" data-wow-delay="0.3s">
                                    <i class="fa fa-check fa-2x text-primary flex-shrink-0 me-3"></i>
                                    <h6 class="mb-0">Technical support</h6>
                                </div>
                                <div class="col-sm-4 d-flex wow fadeIn" data-wow-delay="0.5s">
                                    <i class="fa fa-check fa-2x text-primary flex-shrink-0 me-3"></i>
                                    <h6 class="mb-0">Verified professionals</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                    <!-- About End -->
                
                    <!-- Service Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5 align-items-end mb-5">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="border-start border-5 border-primary ps-4">
                        <h6 class="text-body text-uppercase mb-2">Best Reviews</h6>
                        <h1 class="display-6 mb-0">Top 3 in PalTech</h1>
                    </div>
                </div>
                
                <div class="col-lg-6 text-lg-end wow fadeInUp" data-wow-delay="0.3s">
                    <a class="btn btn-primary py-3 px-5" href="#">More workers</a>
                </div>
            </div>
   
            <div class="row g-4 justify-content-center">
                     <!-- make for loop here on the top 5 workers -->
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="service-item bg-light overflow-hidden h-100">
                        <img class="img-fluid" src="img/izz.PNG" alt="">
                        <div class="service-text position-relative text-center h-100 p-4">
                            <h5 class="mb-3">Izzaldeen Malakh</h5>
                            <p>Electrical Technician in Ramallah</p>
                            <a class="small" href="">More about izz<i class="fa fa-arrow-right ms-3"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                 
                </div>
                
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                 
                </div>

            </div>
        </div>
    </div>
    <!-- Service End -->
                

                
    
        <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


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