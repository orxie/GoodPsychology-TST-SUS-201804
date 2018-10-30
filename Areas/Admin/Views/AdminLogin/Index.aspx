<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<Model.UserInfo>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="../../Content/css/bootstrap.min.css">
	<link rel="stylesheet" href="../../Content/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="../../Content/vendor/linearicons/style.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="../../Content/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="../../Content/css/demo.css">
	<!-- GOOGLE FONTS -->
    <link href="../../Content/css/Logincss.css" rel="stylesheet" />
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="../../Content/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="../../Content/img/favicon.png">
    <title>后台登录</title>
</head>
<body>
    	<!-- WRAPPER -->
	<div id="wrapper">
		<div class="vertical-align-wrap">
			<div class="vertical-align-middle">
				<div class="auth-box ">
					<div class="left">
						<div class="content">
							<div class="header">
								<div class="logo text-center"><img src="../../../../img/logo.gif" width="111" height="28" alt="Klorofil Logo"></div>
								<p class="lead">后台管理登录界面</p>
							</div>
							<form class="form-auth-small" action="<%=Url.Content("~/AdminLogin/Index") %>">
								<div class="form-group">
									<label for="signin-email" class="control-label sr-only">账户:</label>
									<input  name="UserAccount" type="text" class="form-control" id="signin-email" placeholder="请输入管理员的用户名">
								</div>
								<div class="form-group">
									<label for="signin-password" class="control-label sr-only">密码:</label>
									<input  name="UserPassWord" type="password" class="form-control" id="signin-password" placeholder="请输入您的密码...">
								</div>
								<div class="form-group clearfix">
									<label class="fancy-checkbox element-left">
										<%--<input type="checkbox">--%>
										<span><%=Html.ValidationMessage("AdmindataValidate") %></span>
									</label>
								</div>
								<button type="submit" class="btn btn-primary btn-lg btn-block">登录</button>
								<div class="bottom">
									<span class="helper-text"><i class="fa fa-lock"></i> <a href="#">忘记密码?</a></span>
								</div>
							</form>
						</div>
					</div>
					<div class="right">
						<div class="overlay"></div>
						<div class="content text">
							<h1 class="heading">心理佳心理服务平台</h1>
							<p>后台管理界面</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- END WRAPPER -->
</body>
</html>
