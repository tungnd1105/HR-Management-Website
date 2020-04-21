
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />

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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css"
	rel="stylesheet" />

<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<!-- CSS Files -->
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
					<li><a href="<c:url value = "admin/thongkenhanvien.htm"/>">
							<i class="fas fa-medal"></i>
							<p>Thành tích cá nhân</p>
					</a></li>
					<li class="active "><a
						href="<c:url value = "admin/phongban.htm"/>"> <i
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
						<a class="navbar-brand"> Quản lý phòng ban</a>
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

					<div class="col-md-7" style="margin-left: 200px">
						<div class="card card-user">

							<div class="card-body">
								<form:form action="admin/phongban.htm" modelAttribute="phongban"
									id="formphongban">
									<div class="row" style="margin-top: 40px">
										<div class="col-md-4 pr-1" style="margin-left: 25px">
											<div class="form-group">
												<label>Mã phòng ban</label>
												<form:input path="id" class="form-control" />
											</div>
										</div>
										<div class="col-md-7 pl-1">
											<div class="form-group">
												<label>Tên phòng ban</label>
												<form:input path="departname" class="form-control" />
											</div>

										</div>

									</div>

									<div style="margin-left: 200px; top: 100px">${message}</div>

									<div class="row">
										<div class="ml-auto mr-auto " style="margin-top: 40px">
											<button name="btnInsert" type="submit"
												class="btn btn-primary" style="width: 128px">
												<i class="fas fa-plus"></i>&nbsp; Thêm mới
											</button>
											<button type="submit" name="bntUpdate"
												class="btn btn-success" style="width: 128px">
												<i class="fas fa-sync-alt"></i>&nbsp; Cập Nhật
											</button>

											<button type="submit" name="btnDelete" class="btn btn-danger"
												style="width: 128px">
												<i class="fas fa-trash"></i>&nbsp;Xóa
											</button>
											<button type="button" class="btn btn-warning" id="btnResets"
												style="width: 128px">
												<i class="far fa-edit "></i>&nbsp; Nhập mới
											</button>

										</div>
									</div>
								</form:form>
							</div>
						</div>
					</div>
					<div class="col-md-7" style="margin-left: 200px">
						<div class="card">

							<form action="admin/phongban.htm" method=post>
								<div class="col-md-7 ">
									<div class="form-group">
										<input type="text" value="" class="form-control"
											placeholder="Tên phòng ban ..." name="search">
									</div>
									<button type="submit" name="btnSearch" class="btn btn-success "
										style="font-size: 10px; margin-top: -70px; margin-left: 350px">
										<i class="fas fa-search"></i>
									</button>
								</div>
							</form>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table">
										<thead class=" text-primary" align="center">
											<th>Mã phòng ban</th>
											<th>Tên phòng ban</th>
										</thead>
										<c:forEach var="pb" items="${departs}">
											<tbody>
												<tr align="center">
													<td>${pb.id}</td>
													<td>${pb.departname}</td>
													<td><button type="button"
															class="btn btn-warning btnEdita" style="font-size: 10px">
															<i class="fas fa-edit"> </i> Sửa
														</button></td>
														<td> <a href="admin/phongban/Delete.htm?id=${pb.id}"><button type="submit"
																 class="btn btn-danger" style="font-size: 10px">
																<i class="fas fa-trash"> </i> Xóa
															</button> </a></td>
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
	<script src="resources/assets_PageAdmin/js/jquery.validate.js"></script>
	<script src="resources/assets_PageAdmin/js/jquery.validate.min.js"></script>
	<script src="resources/assets_PageAdmin/js/validate.js"></script>
	<script src="resources/assets_PageAdmin/js/plugins/bootstrap-notify.js"></script>
	<script src="resources/assets_PageAdmin/js/dataform.js"></script>
	<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
	<script
		src="resources/assets_PageAdmin/js/paper-dashboard.min.js?v=2.0.0"
		type="text/javascript"></script>
	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="resources/assets_PageAdmin/demo/demo.js"></script>

</body>

</html>
