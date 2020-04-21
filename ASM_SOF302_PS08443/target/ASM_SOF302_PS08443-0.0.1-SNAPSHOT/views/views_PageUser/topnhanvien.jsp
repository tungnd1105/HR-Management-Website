<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>

<base href="${pageContext.servletContext.contextPath}/">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="megakit,business,company,agency,multipurpose,modern,bootstrap4">

<meta name="author" content="themefisher.com">

<title>ALIBABA| Html5 Agency template</title>

<!-- bootstrap.min css -->
<link rel="stylesheet"
	href="resources/assets_PageUser/plugins/bootstrap/css/bootstrap.min.css">
<!-- Icon Font Css -->
<link rel="stylesheet"
	href="resources/assets_PageUser/plugins/themify/css/themify-icons.css">
<link rel="stylesheet"
	href="resources/assets_PageUser/plugins/fontawesome/css/all.css">
<link rel="stylesheet"
	href="resources/assets_PageUser/plugins/magnific-popup/dist/magnific-popup.css">
<!-- Owl Carousel CSS -->
<link rel="stylesheet"
	href="resources/assets_PageUser/plugins/slick-carousel/slick/slick.css">
<link rel="stylesheet"
	href="resources/assets_PageUser/plugins/slick-carousel/slick/slick-theme.css">

<!-- Main Stylesheet -->
<link rel="stylesheet" href="resources/assets_PageUser/css/style.css">

</head>

<body>

	<!-- Header Start -->

	<header class="navigation">

		<nav class="navbar navbar-expand-lg  py-4" id="navbar">
			<div class="container">
				<a class="navbar-brand" href="<c:url value = "/home.htm"/>"> ALIBABA </a>

				<button class="navbar-toggler collapsed" type="button"
					data-toggle="collapse" data-target="#navbarsExample09"
					aria-controls="navbarsExample09" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="fa fa-bars"></span>
				</button>

				<div class="collapse navbar-collapse text-center"
					id="navbarsExample09">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a class="nav-link"
							href="<c:url value = "/home.htm"/>">Trang chủ <span
								class="sr-only">(current)</span></a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="dropdown03"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Nhân
								viên</a>
							<ul class="dropdown-menu" aria-labelledby="dropdown03">
								<li><a class="dropdown-item"
									href="<c:url value = "home/topnhanvien.htm"/>">Nhân viên xuất
										sắc</a></li>

							</ul></li>
						<li class="nav-item"><a class="nav-link"href="<c:url value = "/lienhe.htm"/>">Liên hệ</a></li>
					</ul>


				</div>
			</div>
		</nav>
	</header>

	<!-- Header Close -->

	<div class="main-wrapper ">
		<section class="page-title bg-1">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="block text-center">

							<h1 class="text-capitalize mb-4 text-lg">Top 10</h1>
							<ul class="list-inline">
								<li class="list-inline-item"><a href="index.html"
									class="text-white">Trang chủ</a></li>
								<li class="list-inline-item"><span class="text-white">/</span></li>
								<li class="list-inline-item"><a href="<c:url value = "home/topnhanvien.htm"/>"
									class="text-white-50">Nhân viên xuất sắc</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>


		<!-- Section About Start -->


		<!-- Section About End -->



		<!-- section Counter Start -->

		<!-- section Counter End  -->
		<!--  Section Services Start -->
		<section class="section team">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-7 text-center">
						<div class="section-title">

							<h2 class="mt-3 content-title">
								Tuyên dương nhân viên <br>Đạt được nhiều thành tích nhất
							</h2>
						</div>
					</div>
				</div>
			
				<div class="row justify-content-center">
					<c:forEach  var="nv" items="${thongke}" varStatus="t">
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="team-item-wrap mb-5">
							<div class="team-item position-relative">
								<img src="resources/assets_PageUser/images/team/${nv[4]}"
									alt="" class="img-fluid w-100">

							</div>
							<div class="team-item-content">
						<div>	 ${t.index+1}</div>
								<h4 class="mt-3 mb-0 text-capitalize">${nv[1]}</h4>
								<p>${nv[10]}</p>
							</div>
						</div>
					</div>
					</c:forEach>
				</div>
				
			</div>
		</section>
		<!--  Section Services End -->
		<!-- Section Testimonial Start -->
		
		<!-- Section Testimonial End -->

		<!-- footer Start -->
		

	</div>

	<!-- 
    Essential Scripts
    =====================================-->


	<!-- Main jQuery -->
	<script src="resources/assets_PageUser/plugins/jquery/jquery.js"></script>
	<script src="resources/assets_PageUser/js/contact.js"></script>
	<!-- Bootstrap 4.3.1 -->
	<script src="resources/assets_PageUser/plugins/bootstrap/js/popper.js"></script>
	<script
		src="resources/assets_PageUser/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!--  Magnific Popup-->
	<script
		src="resources/assets_PageUser/plugins/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
	<!-- Slick Slider -->
	<script
		src="resources/assets_PageUser/plugins/slick-carousel/slick/slick.min.js"></script>
	<!-- Counterup -->
	<script
		src="resources/assets_PageUser/plugins/counterup/jquery.waypoints.min.js"></script>
	<script
		src="resources/assets_PageUser/plugins/counterup/jquery.counterup.min.js"></script>

	<!-- Google Map -->
	<script src="resources/assets_PageUser/plugins/google-map/map.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkeLMlsiwzp6b3Gnaxd86lvakimwGA6UA&callback=initMap"></script>

	<script src="resources/assets_PageUser/js/script.js"></script>

</body>
</html>