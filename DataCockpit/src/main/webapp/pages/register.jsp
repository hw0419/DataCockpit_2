<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
    String context = request.getContextPath();
			String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
					+ context + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="height: 100%;">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>用户注册</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet" href="<%=basePath%>/resource/css/bootstrap.min.css">
<!-- iCheck -->
<link rel="stylesheet" href="<%=basePath%>/introduce/css/lib.css" />
<link rel="stylesheet" href="<%=basePath%>/introduce/css/less.css">
<link rel="stylesheet " href="<%=basePath%>/introduce/css/animate.min.css ">
<link rel="stylesheet " href="<%=basePath%>/introduce/css/swiper-3.3.1.min.css ">
<link rel="stylesheet" href="<%=basePath%>/resource/css/AdminLTE.min.css">
<link rel="stylesheet" href="<%=basePath%>/resource/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=basePath%>/resource/css/ionicons.min.css">
<link rel="stylesheet" href="<%=basePath%>/resource/css/blue.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
<style type="text/css">
#code_input {
	width: 200px;
	height: 34px;
}

body {
	overflow: hidden;
	height: 100%;
}
</style>
</head>

<body>
	<div class="loading">
		<span><i></i></span>
	</div>

	<!-- 头部 -->

	<div id="hd">
		<a href="<%=basePath%>/introduce/index.html" class="logo"><img class="img-pc"
			src="<%=basePath%>/introduce/images/logo06.png" alt=""><img class="img-m"
			src="<%=basePath%>/introduce/images/logo2.png" alt=""></a> <span
			class="menuBtn"></span>
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
						src="<%=basePath%>/introduce/uploads/2017/03/081739227280.mp4"></video>
					<div id="video_cover"
						style="background-image: url(<%=basePath%>/introduce/uploads/2017/01/231844025998.jpg);"></div>
					<!-- <div id="overlay"></div> -->
					<!-- 视频背景 end-->
					<div class="register-box" style="margin: 4% auto">
						<div class="register-logo">
							<a href="#" style="margin-left: 50px; margin-bottom: 20px;"><b>账号信息登记</b></a>
						</div>

						<div class="register-box-body" style="width: 390px; height: 500px">

							<form action="<%=basePath%>/register.shtml" method="post">
								<div class="form-group has-feedback">

									<sapn style="display: block;margin-bottom: -30px;">企业名称：
									</sapn>
									<input type="text" class="form-control"
										style="width: 270px; margin-left: 85px" placeholder="请输入企业名称"
										name="corpname"> <span
										style="display: block; margin-top: -36px; margin-left: 320px">
										<img src="<%=basePath%>/resource/images/ios7-world.png"
										style="width: 27px; height: 25px;margin-top: 8px;">
									</span>
								</div>
								<div class="form-group has-feedback" style="margin-top: 30px">

									<sapn style="display: block;margin-bottom: -30px;">联系人姓名：
									</sapn>
									<input type="text" class="form-control"
										style="width: 270px; margin-left: 85px" placeholder="请输入联系人姓名"
										name="name"> <span
										style="display: block; margin-top: -36px; margin-left: 320px">
										<img src="<%=basePath%>/resource/images/ios7-contact-outline.png"
										style="width: 27px; height: 25px;margin-top: 8px;">
									</span>
								</div>

								<div class="form-group has-feedback" style="margin-top: 30px">

									<sapn style="display: block;margin-bottom: -30px;">联系人职务：
									</sapn>
									<input type="text" class="form-control"
										style="width: 270px; margin-left: 85px" placeholder="请输入联系人职务"
										name="job"> <span
										style="display: block; margin-top: -36px; margin-left: 320px">
										<img src="<%=basePath%>/resource/images/social-wordpress.png"
										style="width: 27px; height: 25px ;margin-top: 8px;">
									</span>
								</div>
								<span id="ph" style="color: red"></span>
								<div class="form-group has-feedback" style="margin-top: 30px">

									<sapn style="display: block;margin-bottom: -30px;">手机号码：
									</sapn>
									<input type="text" class="form-control"
										style="width: 270px; margin-left: 85px" placeholder="请输入手机号码"
										name="phone" pattern="1[34578]\d{9}" required="required">
									<span
										style="display: block; margin-top: -36px; margin-left: 320px">
										<img src="<%=basePath%>/resource/images/iphone.png"
										style="width: 27px; height: 25px ;margin-top: 8px;">
									</span>
								</div>
								<div class="form-group has-feedback" style="margin-top: 30px">
									<sapn style="display: block;margin-bottom: -30px;">邮箱地址：
									</sapn>
									<input type="email" class="form-control"
										style="width: 270px; margin-left: 85px" placeholder="请输入邮箱地址"
										name="email"> <span
										style="display: block; margin-top: -36px; margin-left: 320px">
										<img src="<%=basePath%>/resource/images/ios7-email.png"
										style="width: 27px; height: 25px ;margin-top: 8px;">
									</span>
								</div>
								<div class="form-group has-feedback" style="margin-top: 30px">
									<sapn style="display: block;margin-bottom: -30px;">密码： </sapn>
									<input type="password" class="form-control"
										style="width: 270px; margin-left: 85px" placeholder="请输入密码"
										name="password" pattern="[0-9a-zA-Z]{6,12}"
										required="required"> <span
										style="display: block; margin-top: -36px; margin-left: 320px">
										<img src="<%=basePath%>/resource/images/locked.png"
										style="width: 27px; height: 25px ;margin-top: 8px;">
									</span>
								</div>
								<span id="mess" style="color: red"></span>
								<div class="form-group has-feedback" style="margin-top: 30px">
									<sapn style="display: block;margin-bottom: -30px;">确认密码：
									</sapn>
									<input type="password" class="form-control"
										style="width: 270px; margin-left: 85px" placeholder="请确认确认密码"
										name="password1" pattern="[0-9a-zA-Z]{6,12}"
										required="required"> <span
										style="display: block; margin-top: -36px; margin-left: 320px">
										<img src="<%=basePath%>/resource/images/checkmark.png"
										style="width: 27px; height: 25px ;margin-top: 8px;">
									</span>
								</div>

								<div class="form-group has-feedback">
									<sapn style="display: block;margin-top: 30px;">请输入验证码： </sapn>
									<input type="text" class="form-control" id="code_input"
										placeholder="请输入验证码"
										style="width: 140px; float: right; margin-right: 125px; margin-top: -30px;">
								</div>
								<div id="v_container"
									style="display: inline-block; margin-left: 250px; margin-top: -45px;">
									
								</div>
								<div style="display: block;text-align:left; height: 20px;width: 300px;">
												<span class="tishi" style="color: yellow;font-size: 14px;"></span>
											</div>
						</div>

						<div class="row" style="margin-top: 10px">
							<div class="col-xs-8"
								style="margin-left: 60px; margin-top: -100px;">
								<div class="checkbox icheck" style="margin-left: 20px">
									<label> <input type="checkbox" name="xieyi" value="1">
										我同意 <a href="yonghuxieyi.html">用户协议</a>
									</label>
								</div>
							</div>
							<!-- /.col -->
							<div class="col-xs-12" style="margin-top: 10px;">
								<input type="submit" name="zuce" value="申请注册"
									class="btn btn-primary btn-block btn-flat" disabled="disabled"
									style="position: absolute; width: 106px; height: 34px; margin-top: -110px; border-radius: 5px; margin-left: 255px;" />
							</div>
							<!-- /.col -->
						</div>
						</form>

						<a href="<%=basePath%>/login.jsp" class="text-center"
							style="display: block; margin-left: -250px; margin-top: -65px;">我已经有账号</a>
					</div>
					<!-- /.form-box -->
				</div>
				<!-- /.register-box -->

				<!-- jQuery 3 -->
				<script src="<%=basePath%>/resource/js/jquery.min.js"></script>
				<!-- Bootstrap 3.3.7 -->
				<script src="<%=basePath%>/resource/js/bootstrap.min.js"></script>
				<!-- iCheck -->
				<script src="<%=basePath%>/resource/js/icheck.min.js"></script>
				<script src="<%=basePath%>/resource/js/gVerify.js"></script>
				<script src="<%=basePath%>/introduce/js/jquery.js "></script>
				<script src="<%=basePath%>/introduce/js/lib.js "></script>

				<script src="<%=basePath%>/introduce/js/swiper.min.js "></script>
				<script src="<%=basePath%>/introduce/js/swiper.animate1.0.2.min.js "></script>

				<script>
					var verifyCode = new GVerify("v_container");
					document.getElementById("code_input").onblur = function() {
						var res = verifyCode.validate(document
								.getElementById("code_input").value);
						if (!res) {
							$(".tishi").html("您输入的验证码有误!");
							//alert("验证码错误");
							$("#code_input").val("");
						}else{
							$(".tishi").html("");
						}
					}
				</script>
				<script type="text/javascript">
					$("input[name=password1]").blur(function() {
						var pass = $("input[name=password]").val();
						var pass1 = $("input[name=password1]").val();
						if (pass != pass1) {
							//$("#mess").html("*亲，您两次输入的密码不一致！");
							alert("亲，您两次输入的密码不一致！");
							$("input[name=password1]").val("");
						} else {
							$("#mess").html("");
						}
					});
					$("input[name=xieyi]").click(function() {
						var result = $("input[name=xieyi]").val()
						if (result == "1") {
							$("input[name=zuce]").removeAttr("disabled")
							$("input[name=xieyi]").val("0");
						} else if (result == "0") {
							$("input[name=zuce]").attr("disabled", "disabled")
							$("input[name=xieyi]").val("1");
						}
					})
				</script>
				<script type="text/javascript">
					$("input[name=phone]").blur(function() {
						$.ajax({
							url : "testPhone.shtml",
							type : "post",
							data : {
								phone : $("input[name=phone]").val()
							},
							dataType : "json",
							success : function(result) {
								var phnum = result.num;
								var errormess = result.error;
								if (phnum == 1) {
									$("#ph").html(errormess);
								} else {
									$("#ph").html(errormess);
								}
							}
						})
					});
				</script>
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
								$('#hd').css("background ", "#111");
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
				<script src="<%=basePath%>/introduce/js/bideo.js"></script>
				<script src="<%=basePath%>/introduce/js/main.js"></script>
				<!-- 视频背景 end -->
</body>

</html>
