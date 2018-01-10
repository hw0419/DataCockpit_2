<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
    
<%
	String context=request.getContextPath();
	String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+context+"/";
%>
<!DOCTYPE html>
<html style="height: 100%;">
<head>
<base href="<%=basePath %>">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>登录</title>
<!-- Tell the browser to be responsive to screen width -->
<meta name="keywords" content="RayData" />
<meta name="description" content="" />
<meta name="wap-font-scale" content="no">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet" href="<%=basePath %>/resource/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=basePath %>/resource/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="<%=basePath %>/resource/css/ionicons.min.css">
<!-- Theme style -->

<!-- iCheck -->
<link rel="stylesheet" href="<%=basePath %>/introduce/css/lib.css" />
<link rel="stylesheet" href="<%=basePath %>/resource/css/blue.css">
<link rel="stylesheet" href="<%=basePath %>/introduce/css/cui.css" />
<link rel="stylesheet" href="<%=basePath %>/introduce/css/style.css" />
<link rel="stylesheet" href="<%=basePath %>/introduce/css/less.css">
<link rel="stylesheet" href="<%=basePath %>/introduce/数据驾驶舱04/css/login.css">
<link rel="stylesheet " href="<%=basePath %>/introduce/css/animate.min.css ">
<link rel="stylesheet " href="<%=basePath %>/introduce/css/swiper-3.3.1.min.css ">
<link rel="stylesheet" href="<%=basePath %>/resource/css/AdminLTE.min.css">
<!-- Font Awesome -->


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

</head>

<body>
	<div class="loading">
		<span><i></i></span>
	</div>

	<!-- 头部 -->

	<div id="hd">
		<a href="<%=basePath %>/introduce/index.html" class="logo"><img class="img-pc"
			src="<%=basePath %>/introduce/images/logo06.png" alt=""><img class="img-m"
			src="<%=basePath %>/introduce/images/logo2.png" alt=""></a> <span class="menuBtn"></span>
	</div>

	<!-- 头部 end-->

	<!-- 视频弹窗 -->
	<div class="m-pop dn" id="m-video1">
		<div class="pop-bg"></div>
		<div class="inner m-video1">
			<span class="closev"></span>
			<iframe
				style="top: 10%; left: 10%; position: absolute; width: 80%; height: 80%;"
				src='' frameborder=0'allowfullscreen'></iframe>
		</div>
	</div>
	<!-- 视频弹窗 end-->

	<div class="swiper-container">
		<div class="swiper-wrapper">
			<div class="swiper-slide page1 y-bg1">
				<div class="inner">
					<!-- 视频背景 -->
					<video id="background_video" loop muted autoplay="autoplay"
						src="<%=basePath %>/introduce/uploads/2017/03/081739227280.mp4"></video>
					<div id="video_cover"
						style="background-image: url(<%=basePath %>/introduce/uploads/2017/01/231844025998.jpg);"></div>
					<!-- <div id="overlay"></div> -->
					<!-- 视频背景 end-->

					<div class="login-box">
						<div class="login-logo" style="margin-bottom: 20px;">
							<a href="#"
								style="color: white; font-family: Microsoft YaHei; height: 89px;"><b>登&nbsp;录</b></a>
						</div>
						<!-- /.login-logo -->
						<div class="login-box-body"
							style="background-color: rgba(255, 255, 255, .04);">
							<form action="login1.shtml" method="post">
								<div class="form-group has-feedback">
									<input type="text" class="form-control" placeholder="请输入手机号码"
										name="phone" style="border-radius: 5px;">
									<!--  <input type="text" class="form-control" placeholder="请输入手机号码"  pattern="1[34578]\d{9}" required="required"  name="phone"> -->
									<span
										style="display: block; margin-top: -35px; margin-left: 291px"><img
										src="resource/images/iphone.png"
										style="width: 27px; height: 25px"></span>
								</div>
								<div class="form-group has-feedback">
									<!-- <input type="password" class="form-control" placeholder="请输入密码"  pattern="[0-9a-zA-Z]{8,16}" required="required"  name="password"> -->
									<input type="password" class="form-control" placeholder="请输入密码"
										name="password" style="border-radius: 5px;"> <span
										style="display: block; margin-top: -35px; margin-left: 293px"><img
										src="<%=basePath %>/resource/images/locked.png"
										style="width: 20px; height: 25px"></span>
								</div>

								<div class="form-group has-feedback">
									<div>
										<input type="text" class="form-control" name="code2"
											id="code_input" placeholder="请输入验证码"
											style="width: 150px;; float: left; border-radius: 5px;">
									</div>
									<div id="v_container" name="code2"
										style="width: 150px; height: 40px; float: left; margin-left: 20px;">
										<img src="<%=basePath %>/getYzm.shtml"
											style="width: 140px; height: 40px; border-radius: 5px; margin-left: 10.5px;">
									</div>
								</div>
								<div class="col-xs-8" style="margin-left: -20px;">
									<div class="checkbox icheck">
										<label> <input type="checkbox" name="onLine" value="3">
											<span style="color: #FFFFFF;">下次自动登录</span>
											<div style="display: block;text-align:left; height: 20px;width: 300px;">
												<span class="tishi" style="color: yellow;font-size: 14px;">${erroMessage} </span>
											</div>
										</label>
									</div>
								</div>
								<div class="col-xs-4" style="width: 320px; margin-top: 1px">
									<button type="submit"
										class="btn btn-primary btn-block btn-flat"
										style="font-size: 16px;">登录</button>
								</div>
								<div class="row">
									<a href="<%=basePath %>/pages/register.html" class="text-center"
										style="display: block; margin-top: 155px; font-size: 14px; margin-right: 250px;">申请合作</a>
								</div>
								<!-- /.col -->

								<!--<%--   <div class="col-xs-4" style="font-size: 14px;margin-top: 7px;margin-left:105px">
           <a href="pages/wangjimima.jsp" class="text-center" style="color: #FFFFFF">忘记密码</a>
									</div> --%>-->

								<!-- /.col -->
						</div>
						</form>

						<!-- /.social-auth-links -->

					</div>
					<!-- /.login-box-body -->
				</div>

				<!-- /.login-box -->

				<!-- jQuery 3 -->
				<script src="<%=basePath %>/resource/js/jquery.min.js"></script>
				<!-- Bootstrap 3.3.7 -->
				<script src="<%=basePath %>/resource/js/bootstrap.min.js"></script>
				<!-- iCheck -->
				<script src="<%=basePath %>/resource/js/icheck.min.js"></script>
				<script src="<%=basePath %>/resource/js/gVerify.js"></script>
				<script src="<%=basePath %>/introduce/js/jquery.js "></script>
				<script src="<%=basePath %>/introduce/js/lib.js "></script>

				<script src="<%=basePath %>/introduce/js/swiper.min.js "></script>
				<script src="<%=basePath %>/introduce/js/swiper.animate1.0.2.min.js "></script>

				<script>
					var swiper = new Swiper('.swiper-container', {
						pagination : '.swiper-pagination',
						direction : 'vertical',
						slidesPerView : 1,
						paginationClickable : true,
						spaceBetween : 30,
						mousewheelControl : true,
						onInit : function(swiper) { //Swiper2.x的初始化是onFirstInit
							swiperAnimateCache(swiper); //隐藏动画元素
							swiperAnimate(swiper); //初始化完成开始动画
						},
						onSlideChangeEnd : function(swiper) {
							swiperAnimate(swiper); //每个slide切换结束时也运行当前slide动画
						},
						onTransitionEnd : function(swiper) {
							var num = swiper.activeIndex;
							if (num >= 1) {
								$('#hd').css("background ", "#111 ");
							} else {
								$('#hd').css("background ", "none ");
							}
						}
					});
				</script>
				<script>
					$(function() {
						$('.swiper-slide .see-btn').click(function(e) {
							vv = $(this).attr('video-src');
							console.log(vv);
							$('.m-video1 iframe').attr('src', vv);
							//vvstr = "<iframe style='top: 10%;left: 10%;position:absolute;width: 80%;height: 80%;' src='"+vv+"' frameborder=0 'allowfullscreen'></iframe>"; //$('.m-video1 iframe').remove(); //$('.m-video1').append(vvstr) $('.m-video1').show();
						});
					});
				</script>

				<!-- 视频背景 -->
				<script src="<%=basePath %>/introduce/js/bideo.js"></script>
				<script src="<%=basePath %>/introduce/js/main.js"></script>
				<!-- 视频背景 end -->

				<script>
					$("#v_container").find("img").click(function() {
						var $img = $(this);
						$(this).attr("src", "");
						$.post("getYzm.shtml", function(data) {
							$img.attr("src", "getYzm.shtml")
						});
					})
				</script>
				<script type="text/javascript">
					$(".form-control").focus(function(){
						$(".tishi").html("");					
					});
				</script>
</body>
</html>
