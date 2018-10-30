<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>锁定</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="<%=Url.Content("../../Areas/Admin/Content/vendor/bootstrap/css/bootstrap.min.css") %>">
	<link rel="stylesheet" href="<%=Url.Content("../../Areas/Admin/Content/vendor/font-awesome/css/font-awesome.min.css") %>"">
	<link rel="stylesheet" href="<%=Url.Content("../../Areas/Admin/Content/vendor/linearicons/style.css") %>">
	<link rel="stylesheet" href="<%=Url.Content("../../Areas/Admin/Content/vendor/chartist/css/chartist-custom.css") %>">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="<%=Url.Content("../../Areas/Admin/Content/css/main.css") %>">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="<%=Url.Content("../../Areas/Admin/Content/css/demo.css") %>">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
        <script>
            $(function () {
                $("#locksreen").attr("class", "active");
            });
    </script>
</head>
<body>
   	<!-- WRAPPER -->
	<div id="wrapper">
		<div class="vertical-align-wrap">
			<div class="vertical-align-middle">
				<div class="auth-box lockscreen clearfix">
					<div class="content">
						<h1 class="sr-only">Klorofil - Free Bootstrap dashboard</h1>
						<div class="logo text-center"><img src="assets/img/logo-dark.png" alt="Klorofil Logo"></div>
						<div class="user text-center">
							<img src="assets/img/user-medium.png" class="img-circle" alt="Avatar">
							<h2 class="name">Samuel Gold</h2>
						</div>
						<form action="index.html">
							<div class="input-group">
								<input type="password" class="form-control" placeholder="Enter your password ...">
								<span class="input-group-btn"><button type="submit" class="btn btn-primary"><i class="fa fa-arrow-right"></i></button></span>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END WRAPPER -->

</body>
</html>
