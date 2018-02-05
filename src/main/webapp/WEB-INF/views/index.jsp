<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Paper &mdash; Free Website Template, Free HTML5 Template by freehtml5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by freehtml5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="freehtml5.co" />

	<!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FreeHTML5.co
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />
	<link href="https://fonts.googleapis.com/css?family=Josefin+Slab:400,600,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Sacramento" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flexslider.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
	
	<!-- Navigation style  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/navigation.css">
	
<%-- 

	<!-- Modernizr JS -->
	<script src="${pageContext.request.contextPath}/resources/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	
	
 --%>
</head>
<body>
		
<!-- 	<div class="fh5co-loader"></div> -->
	
	<!-- <div id="page"> -->
		<%-- <c:import url="/WEB-INF/views/layout/header.jsp"/>  --%>
		
		<div class="row" align="center" style="margin-top:80px;">
			<h3>Taegyu <small>&</small> Heejeong</h3>
		</div> 
	
	<%-- <nav class="fh5co-nav" role="navigation">
		<div class="container-fluid">
			<div class="row">
				<c:import url="/WEB-INF/views/layout/header.jsp"/> 
				
				<!-- header -->
				<jsp:include page="layout/header.jsp"/>
				<div class="row" align="center" style="margin-top:80px;">
					<h3>Taegyu <small>&</small> Heejeongss</h3>
				</div> 
			</div>
		</div>
	</nav> --%>

	<!-- carousel start -->
	<aside id="fh5co-hero">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="flexslider animate-box">
						<ul class="slides">
					   	<li style="background-image: url(${pageContext.request.contextPath}/resources/images/img_bg_1.jpg);">
					   		<div class="overlay-gradient"></div>
					   		<div class="container-fluid">
					   			<div class="row">
						   			<div class="col-md-10 col-md-offset-1 slider-text">
						   				<div class="slider-text-inner">
						   					<h1>Not Every Project Needs To Be Perfect</h1>
												<h2>Free html5 templates Made by <a href="http://freehtml5.co/" target="_blank">freehtml5.co</a></h2>
												<p class="ct"><a href="#">Learn More <i class="icon-arrow-right"></i></a></p>
						   				</div>
						   			</div>
						   		</div>
					   		</div>
					   	</li>
					   	<li style="background-image: url(${pageContext.request.contextPath}/resources/images/img_bg_2.jpg);">
					   		<div class="overlay-gradient"></div>
					   		<div class="container-fluid">
					   			<div class="row">
						   			<div class="col-md-10 col-md-offset-1 slider-text">
						   				<div class="slider-text-inner">
						   					<h1>Minimal &amp; Clean Blog WordPress</h1>
												<h2>Free html5 templates Made by <a href="http://freehtml5.co/" target="_blank">freehtml5.co</a></h2>
												<p class="ct"><a href="#">Learn More <i class="icon-arrow-right"></i></a></p>
						   				</div>
						   			</div>
						   		</div>
					   		</div>
					   	</li>
					   	<li style="background-image: url(${pageContext.request.contextPath}/resources/images/img_bg_3.jpg);">
					   		<div class="overlay-gradient"></div>
					   		<div class="container-fluid">
					   			<div class="row">
						   			<div class="col-md-10 col-md-offset-1 slider-text">
						   				<div class="slider-text-inner">
						   					<h1>What Would You Like To Learn?</h1>
												<h2>Free html5 templates Made by <a href="http://freehtml5.co/" target="_blank">freehtml5.co</a></h2>
												<p class="ct"><a href="#">Learn More <i class="icon-arrow-right"></i></a></p>
						   				</div>
						   			</div>
						   		</div>
					   		</div>
					   	</li>		   	
					  	</ul>
				  	</div>
				</div>
			</div>
		</div>
	</aside>
	<!-- carousel end -->

	<!--
	<div id="fh5co-blog-popular">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-12 col-md-offset-0 text-center fh5co-heading">
					<h2><span>Popular Post</span></h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<div class="fh5co-blog animate-box">
						<a href="#"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/blog-1.jpg" alt=""></a>
						<div class="blog-text">
							<h3><a href="#">Conquer The World</a></h3>
						</div> 
					</div>
				</div>
				<div class="col-md-3">
					<div class="fh5co-blog animate-box">
						<a href="#"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/blog-2.jpg" alt=""></a>
						<div class="blog-text">
							<h3><a href="#">List Minimal Design</a></h3>
						</div> 
					</div>
				</div>
				<div class="col-md-3">
					<div class="fh5co-blog animate-box">
						<a href="#"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/blog-1.jpg" alt=""></a>
						<div class="blog-text">
							<h3><a href="#">Modeling Spotted</a></h3>
						</div> 
					</div>
				</div>
				<div class="col-md-3">
					<div class="fh5co-blog animate-box">
						<a href="#"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/blog-2.jpg" alt=""></a>
						<div class="blog-text">
							<h3><a href="#">Around The World</a></h3>
						</div> 
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="fh5co-content">
		<div class="container">
			<div class="row">
				<div class="col-md-9 col-padded-right">
					<div class="row">
						<div class="col-md-12">
							<div class="fh5co-blog animate-box">
								<div class="title title-pin text-center">
									<span class="posted-on">Nov. 15th 2016</span>
									<h3><a href="#">Modeling &amp; Stylist in USA</a></h3>
									<span class="category">Lifestyle</span>
								</div>
								<a href="#"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/blog-1.jpg" alt=""></a>
								<div class="blog-text text-center">
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit ab aliquam dolor eius. Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit ab aliquam dolor eius.</p>
									<ul class="fh5co-social-icons">
										<li>Share:</li>
										<li><a href="#"><i class="icon-twitter-with-circle"></i></a></li>
										<li><a href="#"><i class="icon-facebook-with-circle"></i></a></li>
										<li><a href="#"><i class="icon-linkedin-with-circle"></i></a></li>
										<li><a href="#"><i class="icon-dribbble-with-circle"></i></a></li>
									</ul>
								</div> 
							</div>
						</div>
						<div class="col-md-6">
							<div class="fh5co-blog animate-box">
								<div class="title text-center">
									<span class="posted-on">Nov. 15th 2016</span>
									<h3><a href="#">Modeling &amp; Stylist in USA</a></h3>
									<span class="category">Lifestyle</span>
								</div>
								<a href="#"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/blog-2.jpg" alt=""></a>
								<div class="blog-text text-center">
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
									<ul class="fh5co-social-icons">
										<li>Share:</li>
										<li><a href="#"><i class="icon-twitter-with-circle"></i></a></li>
										<li><a href="#"><i class="icon-facebook-with-circle"></i></a></li>
										<li><a href="#"><i class="icon-linkedin-with-circle"></i></a></li>
										<li><a href="#"><i class="icon-dribbble-with-circle"></i></a></li>
									</ul>
								</div> 
							</div>
						</div>
						<div class="col-md-6">
							<div class="fh5co-blog animate-box">
								<div class="title text-center">
									<span class="posted-on">Nov. 15th 2016</span>
									<h3><a href="#">Modeling &amp; Stylist in USA</a></h3>
									<span class="category">Lifestyle</span>
								</div>
								<a href="#"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/blog-1.jpg" alt=""></a>
								<div class="blog-text text-center">
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
									<ul class="fh5co-social-icons">
										<li>Share:</li>
										<li><a href="#"><i class="icon-twitter-with-circle"></i></a></li>
										<li><a href="#"><i class="icon-facebook-with-circle"></i></a></li>
										<li><a href="#"><i class="icon-linkedin-with-circle"></i></a></li>
										<li><a href="#"><i class="icon-dribbble-with-circle"></i></a></li>
									</ul>
								</div> 
							</div>
						</div>
						<div class="col-md-6">
							<div class="fh5co-blog animate-box">
								<div class="title text-center">
									<span class="posted-on">Nov. 15th 2016</span>
									<h3><a href="#">Modeling &amp; Stylist in USA</a></h3>
									<span class="category">Lifestyle</span>
								</div>
								<a href="#"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/blog-2.jpg" alt=""></a>
								<div class="blog-text text-center">
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
									<ul class="fh5co-social-icons">
										<li>Share:</li>
										<li><a href="#"><i class="icon-twitter-with-circle"></i></a></li>
										<li><a href="#"><i class="icon-facebook-with-circle"></i></a></li>
										<li><a href="#"><i class="icon-linkedin-with-circle"></i></a></li>
										<li><a href="#"><i class="icon-dribbble-with-circle"></i></a></li>
									</ul>
								</div> 
							</div>
						</div>
						<div class="col-md-6">
							<div class="fh5co-blog animate-box">
								<div class="title text-center">
									<span class="posted-on">Nov. 15th 2016</span>
									<h3><a href="#">Modeling &amp; Stylist in USA</a></h3>
									<span class="category">Lifestyle</span>
								</div>
								<a href="#"><img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/blog-1.jpg" alt=""></a>
								<div class="blog-text text-center">
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
									<ul class="fh5co-social-icons">
										<li>Share:</li>
										<li><a href="#"><i class="icon-twitter-with-circle"></i></a></li>
										<li><a href="#"><i class="icon-facebook-with-circle"></i></a></li>
										<li><a href="#"><i class="icon-linkedin-with-circle"></i></a></li>
										<li><a href="#"><i class="icon-dribbble-with-circle"></i></a></li>
									</ul>
								</div> 
							</div>
						</div>
					</div>
				</div>
				
				<aside id="sidebar">
					<div class="col-md-3">
						<div class="side animate-box">
							<div class="col-md-12 col-md-offset-0 text-center fh5co-heading fh5co-heading-sidebar">
								<h2><span>About Me</span></h2>
							</div>
							<div class="fh5co-staff">
								<img src="${pageContext.request.contextPath}/resources/images/user-2.jpg" alt="Free HTML5 Templates by FreeHTML5.co">
								<h3>Jean Smith</h3>
								<strong class="role">CEO, Founder</strong>
								<p>Quos quia provident conse culpa facere ratione maxime commodi voluptates id repellat velit eaque aspernatur expedita.</p>
								<ul class="fh5co-social-icons">
									<li><a href="#"><i class="icon-facebook"></i></a></li>
									<li><a href="#"><i class="icon-twitter"></i></a></li>
									<li><a href="#"><i class="icon-dribbble"></i></a></li>
									<li><a href="#"><i class="icon-github"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="side animate-box">
							<div class="col-md-12 col-md-offset-0 text-center fh5co-heading fh5co-heading-sidebar">
								<h2><span>Latest Posts</span></h2>
							</div>
							<div class="blog-entry">
								<a href="#">
									<img src="${pageContext.request.contextPath}/resources/images/blog-1.jpg" class="img-responsive" alt="">
									<div class="desc">
										<span class="date">Dec. 25, 2016</span>
										<h3>Most Beautiful Site in 2016</h3>
									</div>
								</a>
							</div>
							<div class="blog-entry">
								<a href="#">
									<img src="${pageContext.request.contextPath}/resources/images/blog-2.jpg" class="img-responsive" alt="">
									<div class="desc">
										<span class="date">Dec. 25, 2016</span>
										<h3>Most Beautiful Site in 2016</h3>
									</div>
								</a>
							</div>
							<div class="blog-entry">
								<a href="#">
									<img src="${pageContext.request.contextPath}/resources/images/blog-1.jpg" class="img-responsive" alt="">
									<div class="desc">
										<span class="date">Dec. 25, 2016</span>
										<h3>Most Beautiful Site in 2016</h3>
									</div>
								</a>
							</div>
						</div>
						<div class="side animate-box">
							<div class="col-md-12 col-md-offset-0 text-center fh5co-heading fh5co-heading-sidebar">
								<h2><span>Category</span></h2>
							</div>
							<ul class="category">
								<li><a href="#"><i class="icon-check"></i>Lifestyle</a></li>
								<li><a href="#"><i class="icon-check"></i>Web Development</a></li>
								<li><a href="#"><i class="icon-check"></i>Web Design</a></li>
								<li><a href="#"><i class="icon-check"></i>Nature</a></li>
								<li><a href="#"><i class="icon-check"></i>Life</a></li>
								<li><a href="#"><i class="icon-check"></i>Entertainment</a></li>
							</ul>
						</div>
						<div class="side animate-box">
							<div class="col-md-12 col-md-offset-0 text-center fh5co-heading fh5co-heading-sidebar">
								<h2><span>Intagram</span></h2>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="insta" style="background-image: url(${pageContext.request.contextPath}/resources/images/insta-1.jpg);">
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</aside>

			</div>
		</div>
	</div> -->


	<footer id="fh5co-footer" role="contentinfo">
		<div class="container">
			<div class="row copyright">
				<div class="col-md-12 text-center">
					<p>
						<small class="block">&copy; 2018 U&I. All Rights Reserved.</small> 
						<small class="block">Designed by <a href="http://www.facebook.com/qkrxorb01" target="_blank">Park Taegyu</a></small>
					</p>
					<p>
						<ul class="fh5co-social-icons">
							<li><i class="icon-twitter"></i>&nbsp;&nbsp;</li>
							<li><i class="icon-facebook"></i>&nbsp;&nbsp;</li>
							<li><i class="icon-linkedin"></i>&nbsp;&nbsp;</li>
							<li><i class="icon-dribbble"></i>&nbsp;&nbsp;</li>
						</ul>
					</p>
				</div>
			</div>

		</div>
	</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	<%-- 
	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.flexslider-min.js"></script>
	<!-- Magnific Popup -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
 --%>
	</body>
</html>

