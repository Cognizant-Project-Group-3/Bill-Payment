<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Form validation script -->

<script src="update_vendor_details.js" type="text/javascript">

</script>

<!-- End Form validation script -->

<title>Update Vendor Details</title>


<!-- Theme Made By Prashant Patil (513035) No Copyright -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Vendor</title>

<!-- meta tag -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!--  CSS Tag Library File Inclusion -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link href="http://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">

<!-- JQuery and BootStrap Library File Inclusion -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script>
$(document).ready(function() { $('#country').change(function(event) {  
    var $country_name=$("select#country").val();
       $.post('StateDisplayServlet',{countryname:$country_name}, function(responseJson) {   
        var $select = $('#state');                           
           $select.find('option').remove();
           //$('#country').empty();
           $.each(responseJson, function(key, value) {               
               $('<option>').val(key).text(value).appendTo($select);      
                });
        });
    });
}); 
</script>

<!--Style CSS Code Page i.e design.cc include later  -->
<style>
body {
	font: 400 15px Lato, sans-serif;
	line-height: 1.8;
	color: #818181;
}

h2 {
	font-size: 24px;
	text-transform: uppercase;
	color: #303030;
	font-weight: 600;
	margin-bottom: 30px;
}

h4 {
	font-size: 19px;
	line-height: 1.375em;
	color: #303030;
	font-weight: 400;
	margin-bottom: 30px;
}


/*my tags  */
.button1 {
    background-color: #f4511e; 
    padding: 2px 4px;
    font-family: Montserrat, sans-serif;
    text-decoration: none;
    border: 0px solid #000;
    color: #FFFFFF
}
.transparent {
	opacity: 0.4;
	filter: alpha(opacity =   40); /* For IE8 and earlier */
}

.transparent:hover {
	opacity: 1.0;
	filter: alpha(opacity =   100); /* For IE8 and earlier */
}

.jumbotron {
	background-color: #f4511e;
	color: #fff;
	padding: 100px 25px;
	font-family: Montserrat, sans-serif;
}

.container-fluid {
	padding: 60px 50px;
}

.bg-grey {
	background-color: #f6f6f6;
}

.bg-login-button-color {
	background-color: #f4511e;
}

.logo-small {
	color: #f4511e;
	font-size: 50px;
}

.logo {
	color: #f4511e;
	font-size: 270px;
}

.thumbnail {
	padding: 0 0 15px 0;
	border: none;
	border-radius: 0;
}

.thumbnail img {
	width: 100%;
	height: 100%;
	margin-bottom: 10px;
}

.carousel-control.right,.carousel-control.left {
	background-image: none;
	color: #f4511e;
}

.carousel-indicators li {
	border-color: #f4511e;
}

.carousel-indicators li.active {
	background-color: #f4511e;
}

.item h4 {
	font-size: 19px;
	line-height: 1.375em;
	font-weight: 400;
	font-style: italic;
	margin: 70px 0;
}

.item span {
	font-style: normal;
}

.panel {
	border: 1px solid #f4511e;
	border-radius: 0 !important;
	transition: box-shadow 0.5s;
}

.panel:hover {
	box-shadow: 5px 0px 40px rgba(0, 0, 0, .2);
}

.panel-footer .btn:hover {
	border: 1px solid #f4511e;
	background-color: #fff !important;
	color: #f4511e;
}

.panel-heading {
	color: #fff !important;
	background-color: #f4511e !important;
	padding: 25px;
	border-bottom: 1px solid transparent;
	border-top-left-radius: 0px;
	border-top-right-radius: 0px;
	border-bottom-left-radius: 0px;
	border-bottom-right-radius: 0px;
}

.panel-footer {
	background-color: white !important;
}

.panel-footer h3 {
	font-size: 32px;
}

.panel-footer h4 {
	color: #aaa;
	font-size: 14px;
}

.panel-footer .btn {
	margin: 15px 0;
	background-color: #CC3333;
	color: #fff;
}

.navbar {
	margin-bottom: 0;
	background-color: #f4511e;
	z-index: 9999;
	border: 0;
	font-size: 32px !important;
	line-height: 1.42857143 !important;
	letter-spacing: 1px;
	border-radius: 0;
	font-family: Montserrat, sans-serif;
}

.navbar li a,.navbar .navbar-brand {
	color: #fff !important;
}

.banner-title {
	color: #383838;
	font-size: 25px;
}

.navbar-nav li a:hover,.navbar-nav li.active a {
	color: #f4511e !important;
	background-color: #fff !important;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
	color: #fff !important;
}

footer .glyphicon {
	font-size: 20px;
	margin-bottom: 20px;
	color: #f4511e;
}

.slideanim {
	visibility: hidden;
}

.slide {
	animation-name: slide;
	-webkit-animation-name: slide;
	animation-duration: 1s;
	-webkit-animation-duration: 1s;
	visibility: visible;
}

.center {
	margin: auto;
	width: 60%;
	border: 3px solid #f4511e;
	padding: 10px;
}

@
keyframes slide { 0% {
	opacity: 0;
	-webkit-transform: translateY(70%);
}

100%
{
opacity






:



 



1;
-webkit-transform






:



 



translateY






(0%);
}
}
@
-webkit-keyframes slide { 0% {
	opacity: 0;
	-webkit-transform: translateY(70%);
}

100%
{
opacity






:



 



1;
-webkit-transform






:



 



translateY






(0%);
}
}
@media screen and (max-width: 768px) {
	.col-sm-4 {
		text-align: center;
		margin: 25px 0;
	}
	.btn-lg {
		width: 100%;
		margin-bottom: 35px;
	}
}

@media screen and (max-width: 480px) {
	.logo {
		font-size: 150px;
	}
}
</style>
<!--End style CSS Page  -->

<!-- original -->
<script type="text/javascript">
       if(window.history.forward(1) != null)
           window.history.forward(1);
</script>
<!-- original end-->





</head>
<!-- Start body -->
<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="60">
	<!-- Page Design  -->
	<nav class="navbar navbar-default navbar-fixed-top ">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>

			</button>
			<!-- <a class="banner-title" href="#myPage">Home</a> -->
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">

				<li><a href="#UpdateVendor">Update Vendor</a>
				</li>
				<li><form action="homepage.html">
						<input type="submit" class="button1 btn-default" name="Home" value="Home">
					</form>
				</li>
				<li><a href="#customer">Customer</a>
				</li>
				<!-- <li><a href="#vendor">Vendor</a></li> -->
				<li><form action="Logout" method="post">
						<input type="submit" class="button1 btn-default" name="Logout" value="Logout">
					</form>
				</li>
			</ul>
		</div>
	</div>
	</nav>
	<!--End Page Design  -->



	<!-- Main Code  -->

	<div id="UpdateVendor" class="container-fluid text-center bg-grey">

		<!-- <h2>Bill Payment System</h2> -->
		<h4>Update Vendor Registraion Form</h4>

		<c:choose>
			<c:when test="${message == null}">
				<form name="vendor_reg" action="UpdateVendorServlet" 
					onsubmit="return validateForm()">

					<div class="row center">
						<div class="col-sm-12">



							<div class="input-group input-group-lg">
								<span class="input-group-addon" id="sizing-addon1">Vendor
									ID</span> <input type="text"  id="id" name="id" value="${id}" readonly
									class="form-control" placeholder="Vendor ID"
									aria-describedby="sizing-addon1">
							</div>

							<div class="input-group input-group-lg">
								<span class="input-group-addon" id="sizing-addon1">Vendor
									Name</span> <input type="text" name="name"  id="name"  value="${name}"
									class="form-control" placeholder="Vendor Name"
									aria-describedby="sizing-addon1">
							</div>

							<div class="input-group input-group-lg">
								<span class="input-group-addon" id="sizing-addon1">
									COMPANY REG NO</span> <input type="text"  id="company_reg_no" name="company_reg_no"
									value="${company_reg_no}" class="form-control"
									placeholder=" COMPANY REG NO" aria-describedby="sizing-addon1">
							</div>


							<div class="input-group input-group-lg">
								<span class="input-group-addon" id="sizing-addon1">
									VENDOR TYPE: <select id="type" name="type">
										<option selected="selected">${vendor_type}</option>
										<option value="Telephone">Telephone</option>
										<option value="Tax">Tax</option>
										<option value="Insurance">Insurance</option>
										<option value="Electricity">Electricity</option>
								</select> <br /> </span>
							</div>




							<div class="input-group input-group-lg">
								<span class="input-group-addon" id="sizing-addon1">Address</span>
								<input type="text" id="address" name="address" value="${address}"			
									class="form-control" placeholder="Address"
									aria-describedby="sizing-addon1">
							</div>



							<div class="input-group input-group-lg">
								<span class="input-group-addon" id="sizing-addon1">COUNTRY:
									<select id="country" name="country">
										<option value="${country}" 
											selected="selected">${country}</option>
										<option value="India">INDIA</option>
										<option value="USA">USA</option>
								</select> <br /> </span>
							</div>



							<div class="input-group input-group-lg">
								<span class="input-group-addon" id="sizing-addon1">
									STATE: <select id="state" name="state">
										<option value="${state}" selected="selected">${state}</option>
								</select> <br /> </span>
							</div>




							<div class="input-group input-group-lg">
								<span class="input-group-addon" id="sizing-addon1">Email-Id</span>
								<input type="text" name="email" id="email"  value="${emailid}"
									class="form-control" placeholder="Email-Id"
									aria-describedby="sizing-addon1">
							</div>

							<div class="input-group input-group-lg">
								<span class="input-group-addon" id="sizing-addon1">Contact
									No.</span> <input type="text" name="contact_no" id="contact_no"  value="${contact_no}"
									class="form-control" placeholder="Contact No."
									aria-describedby="sizing-addon1">
							</div>


							<div class="input-group input-group-lg">
								<span class="input-group-addon" id="sizing-addon1">Website</span>
								<input type="text" id="website" name="website" value="${website}"
									class="form-control" placeholder="Website"
									aria-describedby="sizing-addon1">
							</div>

							<div class="input-group input-group-lg">
								<span class="input-group-addon" id="sizing-addon1">Employee
									Count</span> <input type="text" id="employee_count" name="employee_count"
									value="${emp_count}" class="form-control"
									placeholder="Employee Count" aria-describedby="sizing-addon1">
							</div>

							<div class="input-group input-group-lg">
								<span class="input-group-addon" id="sizing-addon1">YOE</span> <input
									type="text" id="yoe" name="yoe" value="${yoe}"
									class="form-control" placeholder="YOE"
									aria-describedby="sizing-addon1">
							</div>


							<input type="submit" value="Save"
								class="bg-login-button-color btn-primary btn-lg"
								placeholder="Save" role="button"> <input type="reset"
								value="Reset" class="bg-login-button-color btn-primary btn-lg"
								placeholder="Reset" role="button"> <input type="button"
								value="Cancel" class="bg-login-button-color btn-primary btn-lg"
								placeholder="Cancel" role="button"
								onclick="location.href = 'homepage.html';">


						</div>
					</div>


				</form>
			</c:when>

			<c:otherwise>
				<c:out value="${message}" />
			</c:otherwise>
		</c:choose>
	</div>
	<!--End  Main Code  -->



	<!-- Container (Home Section) -->
	<div id="home" class="container-fluid text-center bg-grey">



		<div class="row slideanim">
			<!--  Home Page Decoration-->
			<h2>Bill Payment System</h2>
			<h4>What we have created</h4>
			<!-- Directing to Customer Page  -->
			<a href="#customer">
				<div class="col-sm-4">
					<div class="small">
						<img src="images\customer-service.jpg" alt="Customer" width="400"
							height="300">
						<p>
							<strong>Customer</strong>
						</p>
						<p>Yes, we built better Customers</p>
					</div>
				</div> </a>

			<!-- Directing to Vendor Page  -->
			<a href="#vendor">
				<div class="col-sm-4">
					<div class="small">

						<img src="images/vendor2.jpg" alt="Vendor" width="400"
							height="300">
						<p>
							<strong>Vendor</strong>
						</p>
						<p>We provide Ultimate Vendors</p>
					</div>
				</div> </a>
			<!-- Directing to Nothing but Home Page ..till now  -->
			<a href="#home">
				<div class="col-sm-4">
					<div class="small">
						<img src="images\future-technology.jpg" alt="new" width="400"
							height="300">
						<p>
							<strong>Analytics</strong>
						</p>
						<p>Yes, We perform Analysis</p>
					</div>
				</div> </a>
		</div>
	</div>
	<br>


	<!-- Container (Customer Section) -->

	<div id="customer" class="container-fluid text-center">

		<h2>Customer</h2>
		<h4>What we offer</h4>
		<div class="row slideanim">
			<br> <a href="RegisterCustomer_pro.html">
				<div class="col-sm-4">
					<span class="glyphicon glyphicon-euro logo-small"></span>
					<h4>Register Here</h4>

				</div> </a> <a href="UpdateCustomer_pro.html">
				<div class="col-sm-4">
					<span class="glyphicon glyphicon-th-list logo-small"></span>
					<h4>Update Existing Details</h4>

				</div> </a> <a href="AddVendor_pro.html">
				<div class="col-sm-4">
					<span class="glyphicon glyphicon-plus logo-small"></span>
					<h4>Add Vendor</h4>
					<br>
					<br>
					<br>
					<br>
				</div> </a> <a href="PendingBill_pro.html">
				<div class="col-sm-4">
					<span class="glyphicon glyphicon-search logo-small"></span>
					<h4>View Pending Bills</h4>

				</div> </a> <a href="BillPayment_pro.html">
				<div class="col-sm-4">
					<span class="glyphicon glyphicon-usd logo-small"></span>
					<h4>Pay Bill</h4>

				</div> </a>

		</div>
	</div>
	<!-- Scroll Smooth Logic  -->
	<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Prevent default anchor click behavior
    event.preventDefault();

    // Store hash
    var hash = this.hash;

    // Using jQuery's animate() method to add smooth page scroll
    // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
    $('html, body').animate({
      scrollTop: $(hash).offset().top
    }, 900, function(){
   
      // Add hash (#) to URL when done scrolling (default click behavior)
      window.location.hash = hash;
    });
  });
  
  // Slide in elements on scroll
  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 600) {
          $(this).addClass("slide");
        }
    });
  });
})
</script>


</body>
</html>
