<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<Model.UserInfo>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>登录</title>
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
                    <h1 style="display: inline-block;">登录</h1> 
					· 
					<h2 style="display: inline-block;">
						<a href="<%=Url.Content("~/Login/Signup") %>">注册</a></h2>
                </header>
								
                <form action="<%=Url.Content("~/Login/Index")%>" method="post" class="subscribe-form"> 
                    <div class="row form-section">
                        <label class="col-md-7 col-sm-7 col-xs-7">
							<!--用户名：-->
                            <input  name="UserAccount" type="text" value="<%=Model!=null?Model.UserAccount:"" %>" class="form-control" placeholder="请输入您的用户名" required />
                        </label>
						
                        <label class="col-md-7 col-sm-7 col-xs-7" style="margin: 20px 0;">
							<!--密&emsp;码：-->
                            <input  name="UserPassWord" type="password" value="<%=Model!=null?Model.UserPassWord:"" %>" class="form-control" placeholder="请输入您的密码..." required />
                        </label>
						
						<div class="col-md-8">
							<label class="col-md-6" for="rememberpwd" id="lbl-remember">
								<input type="checkbox" name="RecordMe"  id="rememberpwd" class="col-md-1">
								<span style="user-select: none;">记住密码</span>
							</label>
							<a href="#" class="col-md-6" style="font-size: 1.3rem;">忘记密码？</a>
						</div>
                        <div class="col-md-10" style="left:15px;">
                           <p><%=Html.ValidationMessage("dataValidate") %></p>
                        </div>
						
                        <div class="col-md-7 col-sm-4 col-xs-4">
                            <button type="submit" class="tm-btn-subscribe col-md-12">登录</button>
                        </div>

                    </div>
                </form>
               <%-- <div class="tm-social-icons-container text-xs-center">
	                    <a href="#" class="tm-social-link"><i class="fa fa-address-card"></i></a>
	             </div>--%>


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
    <link href="<%=Url.Content("../../Content/font-awesome.min.css") %>"" rel="stylesheet" />
        <script type="text/javascript" src="<%=Url.Content("../../Scripts/login_particles.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("../../Scripts/login_app.js")%>"></script>
</body>
</html>

