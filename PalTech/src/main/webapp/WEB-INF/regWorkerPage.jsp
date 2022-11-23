
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

	<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/css/util.css">
	<link rel="stylesheet" type="text/css" href="/css/main.css">
<!--===============================================================================================-->

	
</head>
<body>
<div class="izz">
	<div class="limiter">
		<div class="container-login100" style="background-image: url('/img/quds1.jpg');">
			<div class="wrap-login100">
			<form:form method="POST" action="/reg/worker" modelAttribute="worker" class="login100-form validate-form">
			
					
					<span class="login100-form-title p-b-34 p-t-27">
						Register
					</span>
					<div style="display:flex;">
					<div class="wrap-input100 validate-input" >
						<form:input class="input100" type="text" path="firstName" placeholder="First Name"/>
						<form:errors class="text-danger" path="firstName" />
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<form:input class="input100" type="text" path="lastName" placeholder="Last Name" />
						<form:errors class="text-danger" path="lastName" />
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>
					</div>
					<div style="display:flex;">
					<div class="wrap-input100 validate-input" >
						<form:input class="input100" type="text" path="mobile" placeholder="Phone Number"/>
						<form:errors class="text-danger" path="mobile" />
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
<div >
                        <form:select path="workerAddress" class="input100" style="border:None;" >
                              <option value="" disabled selected hidden>Location</option>
                        
                            <option value="Ramallah" style="color:black;">Ramallah</option>
                            <option value="Nablus" style="color:black;">Nablus</option>
                            <option value="Betlahim" style="color:black;">Betlahim</option>
                            <option value="Tulkarm" style="color:black;">Tulkarm</option>
                            <option value="Hebron" style="color:black;">Hebron</option>
                       </form:select>
                      
                    </div>
                    <form:errors class="text-danger" path="workerAddress" />		
                    				
					</div>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Enter email">
						<form:input class="input100" type="text" path="email" placeholder="Email"/>
						<form:errors class="text-danger" path="email" />
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<form:input class="input100" type="password" path="password" placeholder="Password"/>
						<form:errors class="text-danger" path="password" />
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<form:input class="input100" type="password" path="passwordConfirmation" placeholder="Confirm Password"/>
						<form:errors class="text-danger" path="passwordConfirmation" />
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>
					
	
						<div class="wrap-input100 validate-input" >
<div >
                        <form:select class="input100" style="border:None;" path="profession">
                              <option value="" disabled selected hidden>Position</option>
                        
                            <option value="Electricion" style="color:black;">Electricion</option>
                            <option value="Plumber" style="color:black;">Plumber</option>
                            <option value="Builder" style="color:black;">Builder</option>
                            <option value="General" style="color:black;">General</option>
                        </form:select>
                      
                    </div>	
                    <form:errors class="text-danger" path="profession" />					
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<form:input class="input100" type="date" path="birthDate" placeholder="birthday"/>
							<form:errors class="text-danger" path="birthDate" />
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>
	<div class="wrap-input100 validate-input" data-validate = "Enter email">
						<form:input class="input100" type="text" path="pic" placeholder="Image"/>
						<form:errors class="text-danger" path="pic" />
						<span class="focus-input100" data-placeholder=""></span>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Register
						</button>
					</div>
r
				</form:form>
			</div>
			
		</div>
		
		
	</div>
	
	</div>
<!--===============================================================================================-->
	<script src="/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="/vendor/bootstrap/js/popper.js"></script>
	<script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="/vendor/daterangepicker/moment.min.js"></script>
	<script src="/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="/js/main.js"></script>

</body>
</html>