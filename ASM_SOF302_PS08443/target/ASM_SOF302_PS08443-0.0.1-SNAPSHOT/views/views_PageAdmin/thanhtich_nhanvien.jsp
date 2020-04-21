<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<base href="${pageContext.servletContext.contextPath}/">
<link rel="apple-touch-icon" sizes="76x76"
	href="resources/assets_PageAdmin/img/apple-icon.png">
<link rel="icon" type="image/png"
	href="resources/assets_PageAdmin/img/user.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Admin</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css"
	rel="stylesheet" />
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<!-- CSS Files -->
<link href="resources/assets_PageAdmin/css/main.css" rel="stylesheet" />
<link href="resources/assets_PageAdmin/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="resources/assets_PageAdmin/css/paper-dashboard.css?v=2.0.0"
	rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="resources/assets_PageAdmin/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
	<div class="wrapper ">
		<div class="sidebar" data-color="white" data-active-color="danger">
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
			<div class="logo">
				<a href="http://www.creative-tim.com" class="simple-text logo-mini">
				</a> <a href="http://www.creative-tim.com"
					class="simple-text logo-normal"> Admin <!-- <div class="logo-image-big">
            <img src="resources/assets_PageAdmin/img/logo-big.png">
          </div> -->
				</a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<li><a href="<c:url value = "admin/home.htm"/>"> <i
							class="fas fa-home"></i>
							<p>Trang Chủ</p>
					</a></li>
					<li><a href="<c:url value = "admin/nhanvien.htm"/>"> <i
							class="fas fa-user"></i>
							<p>Nhân Viên</p>
					</a></li>
					<li class="active "><a
						href="<c:url value = "admin/thongkenhanvien.htm"/>"> <i
							class="fas fa-medal"></i>
							<p>Thành tích cá nhân</p>
					</a></li>
					<li><a href="<c:url value = "admin/phongban.htm"/>"> <i
							class="fas fa-sitemap"></i>
							<p>Phòng ban</p>
					</a></li>
					<li><a href="<c:url value = "admin/thongkephongban.htm"/>">
							<i class="fas fa-star"></i>
							<p>Thành Tích phòng ban</p>
					</a></li>
					<li><a href="<c:url value = "admin/danhgia.htm"/>"> <i
							class="fas fa-check-circle"></i>
							<p>Đánh giá nhân viên</p>
					</a></li>

				</ul>
			</div>
		</div>
		<div class="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<div class="navbar-toggle">
							<button type="button" class="navbar-toggler">
								<span class="navbar-toggler-bar bar1"></span> <span
									class="navbar-toggler-bar bar2"></span> <span
									class="navbar-toggler-bar bar3"></span>
							</button>
						</div>
						<a class="navbar-brand">Thành tích cá nhân</a>
					</div>
					<ul class="navbar-nav">

						<li class="nav-item btn-rotate dropdown"><a
							class="nav-link dropdown-toggle" href="http://example.com"
							id="navbarDropdownMenuLink" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"><i
								class="nc-icon nc-settings-gear-65"> </i>
								<p>
									<span class="d-lg-none d-md-block">Some Actions</span>
								</p> </a>
							<div class="dropdown-menu dropdown-menu-right"
								aria-labelledby="navbarDropdownMenuLink">
								<a class="dropdown-item">Đổi mật khẩu</a> <a
									class="dropdown-item"
									href="<c:url value = "admin/logout.htm"/>">Đăng xuất</a>
							</div></li>

					</ul>

				</div>
			</nav>
			<!-- End Navbar -->
			<!-- <div class="panel-header panel-header-sm">


</div> -->

			<div class="content">

				<div class="row">

					<div class="col-md-12">

						<div class="card">

							<div class="card-body">

								<div class="table-responsive">
									<table class="table">
										<thead class=" text-primary" align="center">
											<th>Thứ hạng</th>
											<th>Nhân viên</th>
											<th>Tổng thành tích</th>
											<th>Tổng kỷ luật</th>
											<th>Điểm thưởng</th>

										</thead>
										<c:forEach var="nv" items="${thongke}" varStatus="t">
											<tbody align="center">
												<tr>
													<td>${t.index+1}</td>
													<td>${nv[1]}</td>
													<td>${nv[2]}</td>
													<td>${nv[3]}</td>
													<td>${nv[4]}</td>
												</tr>
											</tbody>
										</c:forEach>
									</table>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>

		</div>
	</div>
	<!--   Core JS Files   -->
	<script src="resources/assets_PageAdmin/js/core/jquery.min.js"></script>
	<script src="resources/assets_PageAdmin/js/core/popper.min.js"></script>
	<script src="resources/assets_PageAdmin/js/core/bootstrap.min.js"></script>
	<script
		src="resources/assets_PageAdmin/js/plugins/perfect-scrollbar.jquery.min.js"></script>
	<!--  Google Maps Plugin    -->
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
	<!-- Chart JS -->
	<script src="resources/assets_PageAdmin/js/plugins/chartjs.min.js"></script>
	<!--  Notifications Plugin    -->
	<script src="resources/assets_PageAdmin/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
	<script
		src="resources/assets_PageAdmin/js/paper-dashboard.min.js?v=2.0.0"
		type="text/javascript"></script>
	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="resources/assets_PageAdmin/demo/demo.js"></script>
</body>

</html>
