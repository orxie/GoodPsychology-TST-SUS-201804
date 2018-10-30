<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/master.Master" Inherits="System.Web.Mvc.ViewPage<Model.UserInfo>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    个人中心-基本资料
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <link rel="stylesheet" href="<%=Url.Content("~/Content/common.css") %>" />
        <link href="<%=Url.Content("~/Content/shopsManager.css") %>" rel="stylesheet" />
		<script type="text/javascript" src="<%=Url.Content("~/Scripts/jquery-1.8.0.min.js") %>"></script>
		<script type="text/javascript" src="<%=Url.Content("~/Scripts/common.js") %>" ></script>
		<script type="text/javascript" src="<%=Url.Content("~/Scripts/navTop.js") %>"></script>
		<script type="text/javascript" src="<%=Url.Content("~/Scripts/jquery.circliful.min.js") %>"></script>
	<!-- 内容  开始-->
		<div class="wrap">
			<div class="vip_cont c100 clearfix">
				<!--左边列表导航  开始-->
				<div class="fl vip_left vip_magLeft">
					<dl>
						<dt>我的账号</dt>
						<dd>
							<p><a href="<%=Url.Content("~/PersonalProfile/index") %>" >基本资料</a></p>
							<p><a href="<%=Url.Content("~/PersonalProfile/UPdatePass") %>" >修改密码</a></p>
						</dd>
					</dl> 
				</div>
				<!--左边列表导航  结束-->

				<!--右边列表内容  开始-->
				<div class="fr vip_right vip_magRight">
					<!--用户信息  开始 -->
					<div class="cus01">
						<div class="cusImg">
							<img src="<%=Url.Content("~/img/refer/9768135e4f45490d9070be2363737b6f.jpg") %>" title="更换头像" />
						</div>
						<div class="cusName">
							<p title="何新文">何新文</p>
							<span title="咨询师等级:">二级咨询师</span>
							<span class="bdTell">电话号码:<i></i><em>13807493532</em></span>
						</div>
					</div>
					<ul class="cus02">
						<li>
							<p><span>原创文章</span><a href="#" target="_blank">去上传</a></p>
							<span class="numbers"><font>36</font>篇</span>
						</li>
						<li>
							<p><span>公益视频</span><a href="#" target="_blank">去上传</a></p>
							<span class="numbers"><font>6</font>个</span>
						</li>
						<li>
							<p><span>个人资料</span><a href="#" target="_blank">去完善</a></p>
							<script>
							    $(function () {
							        $('#myStat').circliful();
							    });
							</script>
							<div id="myStat" data-dimension="60" data-text="85%" data-info="New Clients" data-width="10" data-fontsize="12" data-percent="85" data-fgcolor="#ff6561" data-bgcolor="#eee" data-fill="#FFF" class="circliful" style="width: 60px;"></div>
						</li>
					</ul>
					<!-- 用户信息  结束 -->
					<%--<div class="cus03">
						<div class="mess">
							<a href="#" target="_blank"><i></i>成为VIP会员或者加入鹰监测服务，可以优先排序，增加公司曝光等。>>点击了解详情</a>
						</div>
					</div>--%>
				</div>
				<!--右边列表内容  结束-->
			</div>
		</div>

		<!-- 内容  结束-->

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="BeforeQuoteContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="QuoteMiddleContent" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="QuoteContent" runat="server">
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>
