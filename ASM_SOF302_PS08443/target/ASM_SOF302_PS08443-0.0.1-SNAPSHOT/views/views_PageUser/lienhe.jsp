<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
  <head>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<base href="${pageContext.servletContext.contextPath}/">
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="megakit,business,company,agency,multipurpose,modern,bootstrap4">
  
  <meta name="author" content="themefisher.com">

  <title>Megakit| Html5 Agency template</title>

  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="resources/assets_PageUser/plugins/bootstrap/css/bootstrap.min.css">
  <!-- Icon Font Css -->
  <link rel="stylesheet" href="resources/assets_PageUser/plugins/themify/css/themify-icons.css">
  <link rel="stylesheet" href="resources/assets_PageUser/plugins/fontawesome/css/all.css">
  <link rel="stylesheet" href="resources/assets_PageUser/plugins/magnific-popup/dist/magnific-popup.css">
  <!-- Owl Carousel CSS -->
  <link rel="stylesheet" href="resources/assets_PageUser/plugins/slick-carousel/slick/slick.css">
  <link rel="stylesheet" href="resources/assets_PageUser/plugins/slick-carousel/slick/slick-theme.css">

  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="resources/assets_PageUser/css/style.css">

</head>

<body>

<!-- Header Start --> 

<header class="navigation">

		<nav class="navbar navbar-expand-lg  py-4" id="navbar">
			<div class="container">
				<a class="navbar-brand"href="<c:url value = "/home.htm"/>">  ALIBABA </a>

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
									href="<c:url value = "/topnhanvien.htm"/>">Nhân viên xuất
										sắc</a></li>

							</ul></li>
						<li class="nav-item"><a class="nav-link"href="<c:url value = "home/lienhe.htm"/>">Liên hệ</a></li>
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
          <span class="text-white">Liên hệ</span>
          <h1 class="text-capitalize mb-4 text-lg">Cho chúng tôi</h1>
          <ul class="list-inline">
            <li class="list-inline-item"><a href="index.html" class="text-white">trang chủ</a></li>
            <li class="list-inline-item"><span class="text-white">/</span></li>
            <li class="list-inline-item"><a href="#" class="text-white-50">liên hệ</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- contact form start -->
<section class="contact-form-wrap section">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-12 col-sm-12">
                 <form id="contact-form" class="contact__form" method="post" action="mail.php">
                 <!-- form message -->
                    <div class="row">
                        <div class="col-12">
                            <div class="alert alert-success contact__msg" style="display: none" role="alert">
                                Your message was sent successfully.
                            </div>
                        </div>
                    </div>
                    <!-- end message -->
                  
                    <h3 class="text-md mb-4">Liên hệ</h3>
                    <div class="form-group">
                        <input name="name" type="text" class="form-control" placeholder="Đỉa chỉ email của bạn">
                    </div>
                    <div class="form-group">
                        <input name="email" type="email" class="form-control" placeholder="contact@mail.com">
                    </div>
                    <div class="form-group-2 mb-4">
                        <textarea name="message" class="form-control" rows="4" placeholder="nhập câu hỏi..."></textarea>
                    </div>
                    <button class="btn btn-main" name="submit" type="submit">Gửi</button>
                </form>
            </div>

            <div class="col-lg-5 col-sm-12">
                <div class="contact-content pl-lg-5 mt-5 mt-lg-0">
                   
                    <h2 class="mb-5 mt-2">Nếu bạn có bất kỳ<br> câu hỏi nào đừng do dự hãy  liên hệ ngay với chúng tôi </h2>

                    <ul class="address-block list-unstyled">
                        <li>
                            <i class="ti-direction mr-3"></i>North Main Street,Brooklyn Australia
                        </li>
                        <li>
                            <i class="ti-email mr-3"></i>Email: contact@mail.com
                        </li>
                        <li>
                            <i class="ti-mobile mr-3"></i>Phone:+88 01672 506 744
                        </li>
                    </ul>

                    <ul class="social-icons list-inline mt-5">
                        <li class="list-inline-item">
                            <a href="http://www.themefisher.com"><i class="fab fa-facebook-f"></i></a>
                        </li>
                        
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>


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
    <script src="resources/assets_PageUser/plugins/bootstrap/js/bootstrap.min.js"></script>
   <!--  Magnific Popup-->
    <script src="resources/assets_PageUser/plugins/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
    <!-- Slick Slider -->
    <script src="resources/assets_PageUser/plugins/slick-carousel/slick/slick.min.js"></script>
    <!-- Counterup -->
    <script src="resources/assets_PageUser/plugins/counterup/jquery.waypoints.min.js"></script>
    <script src="resources/assets_PageUser/plugins/counterup/jquery.counterup.min.js"></script>

    <!-- Google Map -->
    <script src="resources/assets_PageUser/plugins/google-map/map.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkeLMlsiwzp6b3Gnaxd86lvakimwGA6UA&callback=initMap"></script>    
    
    <script src="resources/assets_PageUser/js/script.js"></script>

  </body>
  </html>