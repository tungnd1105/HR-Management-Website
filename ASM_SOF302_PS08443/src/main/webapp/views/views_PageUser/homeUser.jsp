<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<base href="${pageContext.servletContext.contextPath}/">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="megakit,business,company,agency,multipurpose,modern,bootstrap4">

<meta name="author" content="themefisher.com">

<title>Công ty BĐS| Html5 Agency template</title>
<base href="${pageContext.servletContext.contextPath}/">
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
				<a class="navbar-brand" href="<c:url value = "/home.htm"/>">  ALIBABA </a>

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
		<!-- Slider Start -->
		<section class="slider">
			<div class="container">
				<div class="row">
					<div class="col-lg-9 col-md-10">
						<div class="block">

							<h1 class="animated fadeInUp mb-5">
								Tuyên dương những nhân viên đạt được <br>nhiều thành tích
								nhất
							</h1>
							<a href="<c:url value = "home/topnhanvien.htm"/>" 
								class="btn btn-main animated fadeInUp btn-round-full"> xem
								ngay <i class="btn-icon fa fa-angle-right ml-2"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>

	<!-- 
    Essential Scripts
    =====================================-->


	<!-- Main jQuery -->
	<script src="resources/assets_PageUser/plugins/jquery/jquery.js"></script>
	<script src="js/contact.js"></script>
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

	<script src="js/script.js"></script>

</body>
</html>
