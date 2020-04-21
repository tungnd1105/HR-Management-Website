<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />

<base href="${pageContext.servletContext.contextPath}/">

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
					<li class="active "><a
						href="<c:url value = "admin/nhanvien.htm"/>"> <i
							class="fas fa-user"></i>
							<p>Nhân Viên</p>
					</a></li>
					<li><a href="<c:url value = "admin/thongkenhanvien.htm"/>">
							<i class="fas fa-medal"></i>
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
						<a class="navbar-brand"> Quản lý nhân viên</a>
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
								<a class="dropdown-item">Đổi mật khẩu</a>
										<a class="dropdown-item"href="<c:url value = "admin/logout.htm"/>">Đăng xuất</a>
							</div></li>

					</ul>

				</div>
			</nav>




			<div class="content">
				<form:form action="admin/nhanvien.htm" modelAttribute="nhanvien"
					method="post" enctype="multipart/form-data" id="formnhanvien">

					<div class="row">
						<div class="col-md-4" style="top: 40px">
							<div style="font-size: 18px; margin-left: 80px">hình ảnh
								đại diện</div>
							<div class="card card-user">
								<div class="card-body">
									<img src="resources/images/${image}" id="avatar">
								</div>
							</div>
							<input type="file" id="upload" name="image">

						</div>
						<div class="col-md-8">
							<div class="card card-user">

								<div class="card-body">

									<div class="row">
										<div class="col-md-3 pr-1">
											<div class="form-group">
												<label>Mã nhân viên</label>
												<form:input path="id" type="text" class="form-control" />
											</div>
										</div>
										<div class="col-md-5 pl-1">
											<div class="form-group">
												<label>Họ và tên</label>
												<form:input type="text" path="name" class="form-control" />
											</div>
										</div>
										<div class=" pl-6">
											<div class="form-group">
												<label>Giới Tính</label> <br />
												<div
													class="custom-control custom-radio custom-control-inline"
													style="top: 5px">
													<form:radiobutton path="gender"
														class="custom-control-input" id="nam" value="true" />
													<label class="custom-control-label" for="nam">Nam</label>
												</div>
												<div
													class="custom-control custom-radio custom-control-inline"
													style="top: 5px">
													<form:radiobutton path="gender"
														class="custom-control-input" id="nu" value="false" />
													<label class="custom-control-label" for="nu">Nữ</label>
												</div>

											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-4 pr-1">
											<div class="form-group">
												<label>Ngày Sinh</label>
												<form:input path="birthday" type="date" class="form-control"
													style="max-height: 40px" />
											</div>
										</div>
										<div class="col-md-5 pl-1">
											<div class="form-group">
												<label> Địa chỉ Email</label>
												<form:input path="email" type="email" class="form-control" />
											</div>
										</div>
										<div class="col-md-3 pl-1">
											<div class="form-group">
												<label>Điện thoại</label>
												<form:input path="phone" type="text" class="form-control" />
											</div>
										</div>

									</div>
									<div class="row">
										<div class="col-md-6 pr-1">
											<div class="form-group">
												<label>Lương( đơn vị vnd) </label>
												<form:input path="salary" type="text" class="form-control"
												/>

											</div>
										</div>

										<div class="col-md-5 pl-1">
											<div class="form-group">
												<label>Phòng ban</label>
												<form:select path="depart.id" id="depart" name="SelectName" class="form-control">
													<option value="default"  >------</option>
													<form:options items="${departs}" itemValue="id" itemLabel="departname"   />
												</form:select>
											</div>
										</div>
									</div>
									<div class="row">

										<div class="col-md-12">
											<div class="form-group">
												<label>Ghi chú</label>
												<form:textarea path="notes" class="form-control textarea"
													id="notes"></form:textarea>
											</div>
										</div>
									</div>
									<p>${message }</p>
									<div class="row">
										<div class="ml-auto mr-auto ">
											<button type="submit" name="btnInsert"
												class="btn btn-primary" style="width: 128px" >
												<i class="fas fa-plus"></i>&nbsp; Thêm mới
											</button>
											<button type="submit" name="btnUpdate"
												class="btn btn-success" style="width: 128px" >
												<i class="fas fa-sync-alt"></i>&nbsp; Cập Nhật
											</button>

											<button type="submit" name="btnDelete" class="btn btn-danger"
												style="width: 128px" >
												<i class="fas fa-trash"></i>&nbsp;Xóa
											</button>
											<button type="button" class="btn btn-warning"
												style="width: 128px" id="btnReset">
												<i class="far fa-edit"></i>&nbsp; Nhập mới
											</button>

										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
						</form:form>
					<div class="row">
						<div>
							<div class="card card-body">
								<form action="admin/nhanvien.htm" method=post>
									<div class="col-md-4 ">
										<div class="form-group">
											<input type="text" value="" class="form-control"
												placeholder="họ tên nhân viên..." name="search">
										</div>
										<button type="submit" name="btnSearch"
											class="btn btn-success "
											style="font-size: 10px; margin-top: -70px; margin-left: 350px">
											<i class="fas fa-search"></i>
										</button>
									</div>
								</form>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table">
											<thead class=" text-primary" align="center">
												<th>Mã nhân viên</th>
												<th>Họ và tên</th>
												<th>Giới tính</th>
												<th>Ngày sinh</th>

												<th>Địa chỉ email</th>
												<th>Điện thoại</th>
												<th>Lương</th>
												<th>Phòng ban</th>

											</thead>
											<c:forEach var="nv" items="${staff}">
												<tbody>
													<tr align="center">
														<td>${nv.id}</td>
														<td>${nv.name }</td>
														<td>${nv.gender?'Nam':'Nữ'}</td>
														<td>${nv.birthday }</td>
														<td>${nv.email }</td>
														<td>${nv.phone }</td>
													<td> <fmt:formatNumber  value="${nv.salary}" /> </td>
														<td>${nv.depart }</td>
														<td class="d-none">${nv.notes}</td>
														<td class="d-none">${nv.avatar}</td>
														<td><button type="button"
																class="btn btn-warning btnEdit" style="font-size: 10px">
																<i class="fas fa-edit"> </i> Sửa
															</button></td>
																<td> <a href="admin/nhanvien/Delete.htm?id=${nv.id}"><button type="submit"
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
	<script src="resources/assets_PageAdmin/js/jquery.validate.js"></script>
	<script src="resources/assets_PageAdmin/js/jquery.validate.min.js"></script>
	<script src="resources/assets_PageAdmin/js/validate.js"></script>
	<!--  Notifications Plugin    -->

	<script src="resources/assets_PageAdmin/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
	<script
		src="resources/assets_PageAdmin/js/paper-dashboard.min.js?v=2.0.0"
		type="text/javascript"></script>
	<script src="resources/assets_PageAdmin/js/dataform.js"></script>

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="resources/assets_PageAdmin/demo/demo.js"></script>
</body>

</html>
