
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
                <a href="/home" class="nav-item nav-link active">Home</a>
                       <a href="/destroy" class="nav-item nav-link active">logout</a>
       

    
                </div>
    
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="hi d-flex">
                <div class="profile-nav col p-3">
                    <div class="panel">
                        <div class="user-heading round">
                            <a href="#">
                                <img src="${currentWorker.pic}" alt="">
                            </a>
                            <h1>${currentWorker.firstName}</h1>
                            <p>${currentWorker.email}</p>
                        </div>

                        <ul class="nav d-flex flex-column ">
                            <li class="active"><a href="#"> <i class="fa fa-user"></i>Profile</a></li>
                            <c:choose>
                            <c:when test = "${user_id != null}">
                               <li><a href="/send/${currentWorker.id}"> <i class="fa fa-calendar"></i>Book</a></li>
                                </c:when>
                                <c:otherwise>
                               <li><a href="/reg/user"> <i class="fa fa-calendar"></i>Book</a></li>
                                    </c:otherwise>
      							</c:choose>
                            
                            <li><a href="#"> <i class="fa fa-gear"></i>Settings</a></li>
                        </ul>
                    </div>
                </div>
                <div class="panel mt-5">
                    <div class="bio-graph-heading">
                        Hi worker you can edit your page and uploade a photo of your work
                    </div>
                    
                    <div class="panel-body bio-graph-info">
                      
                        <div class="row" style="font-size:1rem; margin-top:10px;">
                            <div class="bio-row">
                                <p><span>Name </span>: ${currentWorker.firstName} ${currentWorker.lastName}</p>
                            </div>
                        
                            <div class="bio-row">
                                <p><span>City </span>: ${currentWorker.workerAddress}</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Birthday</span>: ${currentWorker.birthDate}</p>
                            </div>
                            <div class="bio-row">
                                <p><span>Occupation </span>: ${currentWorker.profession}</p>
                            </div>
                            <div class="bio-row">
                             <c:choose>
                            <c:when test = "${user_id != null}">
                               <p><span>Email </span>: ${currentWorker.email}</p>
                                </c:when>
                                <c:otherwise>
                                <p><span>Email </span>: **********</p>
                                    </c:otherwise>
      							</c:choose>
                                
                            </div>
                            <div class="bio-row">
                            <c:choose>
                            <c:when test = "${user_id != null}">
                                <p><span>Mobile </span>: ${currentWorker.mobile}</p>
                                </c:when>
                                <c:otherwise>
                                <p><span>Mobile </span>: 05********</p>
                                    </c:otherwise>
      							</c:choose>
                                
                            </div>
                        
                        </div>
                         
                        
                          
                          <h6 style="margin-top:90px;background-color:grey;">Reviews</h6>
                          <div class="reviews">
                          <c:forEach var="rate" items="${allReviews}">
                          <p> ${rate.rating} stars by ${rate.user.firstName}..${rate.comment} </p>
                          
                          </c:forEach>
                          
                         
                          </div>
                          
                          <c:if test="${user_id != null}">
                          <h6 style="margin-top:10px;">Add a review:</h6>
                          <form:form method="POST" action="/addrating/${currentWorker.id}" modelAttribute="review" style="margin-top:10px;">
                        <div class="form-group row">
                          
                          <form:label path="rating" class="col-sm-3 col-form-label">Rate from 1 to 5:
						</form:label>
						<div class="col-sm-6" style="margin-bottom:5px;">
                          <form:input path="rating" type="number"  class="form-control" />
                          </div>
                          <form:errors class="text-danger" path="rating" />
                          </div>
                          <div class="form-group row">
                         
                          <form:label path="comment" class="col-sm-3 col-form-label">Comment:
						</form:label>
						<div class="col-sm-6">
                           <form:input path="comment" type="text" class="form-control" />
                           </div>
                          <form:errors class="text-danger" path="comment" />
                          </div>
                          <form:input type="hidden" path="user" value="${user_id}"/>
                          <form:input type="hidden" path="worker" value="${ currentWorker.id}"/>
                          <button type="submit">Submit</button>
                          </form:form>
                          
                          
 
                          
                          </c:if>
                                 <c:if test="${currentWorker.id  == workerId}">
                                                   <a href="/worker/${currentWorker.id}/edit" class="btn btn-warning">Edit Profile</a>
                                 
                                  </c:if>
                       
                    </div>
                </div>
            </div>
        </div>
</body>

</html>