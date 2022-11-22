<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
				<form class="login100-form validate-form">
					
					<span class="login100-form-title p-b-34 p-t-27">
						Register
					</span>
					<div style="display:flex;">
					<div class="wrap-input100 validate-input" >
						<input class="input100" type="text" name="firstName" placeholder="First Name">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<input class="input100" type="text" name="lastName" placeholder="Last Name">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>
					</div>
					<div style="display:flex;">
					<div class="wrap-input100 validate-input" >
						<input class="input100" type="text" name="phone" placeholder="Phone Number">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
<div >
                        <select class="input100" style="border:None;">
                              <option value="" disabled selected hidden>Location</option>
                        
                            <option value="Ramallah" style="color:black;">Ramallah</option>
                            <option value="Nablus" style="color:black;">Nablus</option>
                            <option value="Betlahim" style="color:black;">Betlahim</option>
                            <option value="Tulkarm" style="color:black;">Tulkarm</option>
                            <option value="Hebron" style="color:black;">Hebron</option>
                        </select>
                      
                    </div>						
					</div>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="confirm" placeholder="Confirm Password">
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<div class="wrap-input100 validate-input" >
<div >
                        <select class="input100" style="border:None;">
                              <option value="" disabled selected hidden>Position</option>
                        
                            <option value="Electricion" style="color:black;">Electricion</option>
                            <option value="Plumber" style="color:black;">Plumber</option>
                            <option value="Builder" style="color:black;">Builder</option>
                            <option value="General" style="color:black;">General</option>
                        </select>
                      
                    </div>						
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="date" name="birthday" placeholder="birthday">
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>


					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Register
						</button>
					</div>
r
				</form>
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