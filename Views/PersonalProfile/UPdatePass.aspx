<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/master.Master" Inherits="System.Web.Mvc.ViewPage<Model.UserInfo>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    个人中心-修改密码
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
					
					<div class="CONS4">
                        <form action="<%=Url.Content("~/PersonalProfile/UPdatePass") %>">
                        旧&ensp;&ensp;密&ensp;&ensp;码:<input type="text" name="yuanpass" />
                            <br />
                        新&ensp;&ensp;密&ensp;&ensp;码:<input type="text" name="newpass" />
                            <br />
                        确认新密码:<input type="text" name="newpasstoo" />
                            <br />
                        <input type="submit" name="bon" value="确认修改" style="width:100px;position:absolute;left:72px;" />
                        </form>
					</div>
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
