<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
	<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/navigation.css"> --%>
	
	<!-- Modernizr JS -->
	<script src="${pageContext.request.contextPath}/resources/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	
	<style>
	.fh5co-nav-toggle {
		position: fixed !important;
		margin-top: 10px !important;
	}
	#top{
		position: fixed !important;
		z-index: 15;
	}
	
	</style>
	
	
	
	<script>
		function timer(){
			setTimer();
			setInterval(function(){
				setTimer();
			}, 1000);
		}
		
		function setTimer(){
			var firstDay = new Date(2017, 9-1, 30-1, 0, 0, 0, 0).getTime();
			var today = new Date().getTime();
			
			var leadTime = Number(new Date(today - firstDay).getTime());
			
			var second = 1000;
			var minute = 1000 * 60;
			var hour = minute * 60;
			var day = hour * 24;

			var days, hours, minutes, seconds;
			
			days = leadTime / day;
			leadTime = leadTime % day;
			
			hours = leadTime / hour;
			leadTime = leadTime % hour;
			
			minutes = leadTime / minute;
			leadTime = leadTime % minute;
			
			seconds = leadTime / second;
			//leadTime -= days * day;
			
			days = Math.floor(days);
			hours = Math.floor(hours);
			minutes = Math.floor(minutes);
			seconds = Math.floor(seconds);
			
			if(days < 10)
				days = "0" + days;
			if(hours < 10)
				hours = "0" + hours;
			if(minutes < 10)
				minutes = "0" + minutes;
			if(seconds < 10)
				seconds = "0" + seconds;
			
			var loveTime = "D-" + days + " " + hours + ":" + minutes + "  " + seconds + "sec";
			
			$("#timer").text(loveTime);
		}
		
	</script>
	
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script>
		$(function(){
			var path = window.location.pathname;//URI
			$('a[href="'+path+'"]').parent().addClass('active');
			
			timer();
		});
</script>

	
</head>
<body>

	<nav class="fh5co-nav" role="navigation">
	<div class="container-fluid">
		<div class="row">
			<div class="top-menu" id="top"> 
				<div class="container">
					<div class="row">
						<div class="col-sm-7 text-left menu-1" id='menu'>
							<ul>
								<li><a
									href="${pageContext.request.contextPath}/">Home</a></li>
								<li><a href="${pageContext.request.contextPath}/lifestyle">Lifestyle</a></li>
								<li><a href="${pageContext.request.contextPath}/calendar">Calendar</a></li>
								<li class="has-dropdown"><a
									href="${pageContext.request.contextPath}/restaurant">Restaurant</a>
									<ul class="dropdown">
										<li><a href="#">gone</a></li>
										<li><a href="#">to go</a></li>
									</ul></li>
								<li class="has-dropdown"><a
									href="${pageContext.request.contextPath}/bucketList">Bucket
										List</a>
									<ul class="dropdown">
										<li><a href="#">done</a></li>
										<li><a href="#">to do</a></li>
									</ul></li>
							</ul>
						</div>
						<div class="col-sm-2">
							<span id="timer"></span>
						</div>
					</div>
				</div>
			</div>


		</div>
	</div>
</nav>
	

	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.flexslider-min.js"></script>
	<!-- Magnific Popup -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>

</html>


