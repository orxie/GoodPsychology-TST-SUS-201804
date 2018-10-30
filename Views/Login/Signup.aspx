<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<Model.UserInfo>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>注册</title>
        <link rel="stylesheet" href="<%=Url.Content("../../Content/bootstrap.min.css")%>">

    <script type="text/javascript" src="<%=Url.Content("../../Scripts/login.js")%>"></script>
    <link rel="stylesheet" href="<%=Url.Content("../../Content/login.css")%>">
    <link rel="stylesheet" href="<%=Url.Content("../../Content/login_demo.css")%>">
</head>
<body>
        
    <div id="particles-js"></div>

    <ul class="cb-slideshow">
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
    </ul>

    <div class="container-fluid">
		<!--logo-->
        <a href="<%=Url.Content("~/Home/Index") %>" style="position: absolute; top: 10px; z-index: 99999;">
            <img src="<%=Url.Content("~/img/logo.gif") %>" alt="logo" style="width: 50%;" />
        </a>
		<!--内容-->
        <div class="row cb-slideshow-text-container ">
            <div class="tm-content col-xl-6 col-sm-8 col-xs-8 ml-auto section">
                <header class="mb-5" style="color: #fff; font-size: 2rem;">
                    <h1 style="display: inline-block;">注册</h1> 
					· 
					<h2 style="display: inline-block;">
						<a href="<%=Url.Content("~/Login/index") %>">登录</a></h2>
                </header>
								
                <form action="<%=Url.Content("~/Login/Signup")%>" method="post" class="subscribe-form"> 
                    <div class="row form-section">
                        <label class="col-md-7 col-sm-7 col-xs-7" style="margin: 10px 0;">
							<!--账户：-->
                            <input  name="UserAccount" type="text" value="<%=Model!=null?Model.UserAccount:"" %>" class="form-control" placeholder="请输入您的账户" required />
                        </label>

						<label class="col-md-7 col-sm-7 col-xs-7" style="margin: 10px 0;">
							<!--用户名：-->
                            <input  name="UserNname" type="text" value="<%=Model!=null?Model.UserNname:"" %>" class="form-control" placeholder="请输入您的昵称" required />
                        </label>

                        <label class="col-md-7 col-sm-7 col-xs-7" style="margin: 10px 0;"">
							<!--密&emsp;码：-->
                            <input  name="UserPassWord" type="password" value="<%=Model!=null?Model.UserPassWord:"" %>" class="form-control" placeholder="请输入您的密码" required />
                        </label>

                        <label class="col-md-7 col-sm-7 col-xs-7" style="margin: 10px 0;"">
							<!--密&emsp;码：-->
                            <input  name="UserPassWords" type="password" value="<%=Model!=null?Model.UserPassWord:"" %>" class="form-control" placeholder="请再次输入您的密码" required />
                        </label>
                        <div class="col-md-10" style="left:15px;">
                           <p><%=Html.ValidationMessage("dataValidates") %></p>
                        </div>
                        <div class="col-md-7 col-sm-4 col-xs-4" style="margin: 10px 0;" >
                            <button type="submit" class="tm-btn-subscribe col-md-12">注册</button>
                        </div>

                    </div>
                </form>

            </div>
        </div>
        <!--footer-->
        <div class="footer-link">
            <p>
                &copy;&nbsp;2017-2018&nbsp;
                <a rel="nofollow" href="#" target="_parent">XinLiJia.CN</a>
                &nbsp;版权所有
            </p>
        </div>
    </div>
        <script type="text/javascript" src="<%=Url.Content("../../Scripts/login_particles.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("../../Scripts/login_app.js")%>"></script>
</body>
</html>
