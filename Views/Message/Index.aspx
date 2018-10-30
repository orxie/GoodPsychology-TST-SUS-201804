<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/master.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    好文推送
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="<%=Url.Content("../../Content/message.css") %>" rel="stylesheet" />
    <link href="<%=Url.Content("../../Content/animate.css") %>" rel="stylesheet" />
	<link rel="stylesheet" href="<%=Url.Content("../../Areas/Admin/Content/vendor/bootstrap/css/bootstrap.min.css") %>">
     <script>
         $(function () {
             $("#Message").attr("class", "active");
         });
    </script>
    <!-- 内容 -->
		<div class="container">
			<div class="row">
				<!-- 导航 -->
				<ul class="nav nav-pills recommend-ul">
					<li class="active" role="presentation"></li>
					<li role="presentation">
						<a href="javascript:void(0)">全部</a>
					</li>
					<li role="presentation">
						<a href="javascript:void(0)">婚恋</a>
					</li>
					<li role="presentation">
						<a href="javascript:void(0)">健康</a>
					</li>
					<li role="presentation">
						<a href="javascript:void(0)">性心理</a>
					</li>
					<li role="presentation">
						<a href="javascript:void(0)">职场</a>
					</li>
					<li role="presentation">
						<a href="javascript:void(0)">教育</a>
					</li>
					<li role="presentation">
						<a href="javascript:void(0)">性格</a>
					</li>
					<li role="presentation">
						<a href="javascript:void(0)">科普</a>
					</li>
				</ul>

				<!-- 左侧 -->
				<div class="col-md-7">
                     

                    <%System.Data.DataSet rticleInfo = Session["rticleInfo"] as System.Data.DataSet;
                         
                           %>
                    <%for (int i = 0; i < rticleInfo.Tables[0].Rows.Count; i++)
			        {
			        
			 
		            %>
					<div class="panel panel-default">
                                 <div class="panel-heading"><a href="#" class="pull-right" style="position: relative;top:10px;">更多>></a> <h4><a href="<%=Url.Content("~/Message/messageDetail/"+rticleInfo.Tables[0].Rows[i][0].ToString()) %>"><%=rticleInfo.Tables[0].Rows[i][2].ToString() %></a></h4></div>
                                  <div class="panel-body">
                                    <p><a  href="<%=Url.Content("~/Message/messageDetail/"+rticleInfo.Tables[0].Rows[i][0].ToString()) %>"><%=rticleInfo.Tables[0].Rows[i][3].ToString() %> </a></p>
                                    <div class="clearfix"></div>
                                    <hr>
<%--                                     <em class="label label-blue">孤独</em>
							             <em class="label label-white">抑郁</em>--%>
                                    <div class="pull-right">
								<!-- 观看人数 -->
                            
								<ul class="list-inline mark-color">

									<li>

										<i class="glyphicon glyphicon-time"></i><%=rticleInfo.Tables[0].Rows[i][4].ToString().Substring(0,10)%>
									</li>

									<li>
										<i class="glyphicon glyphicon-open"></i><%=rticleInfo.Tables[0].Rows[i][5].ToString() %>
									</li>

									<li>
										<i class="glyphicon glyphicon-thumbs-up"></i><%=rticleInfo.Tables[0].Rows[i][6].ToString() %>
									</li>

								</ul>
							</div>
                                  </div>
                               </div>
					<% }%>
				
					<!-- 分页 -->
					<ul class="pagination ">
						<li>
							<a href="javascript:void(0);">&laquo;</a>
						</li>
						<li>
							<a href="#">1</a>
						</li>
						<li>
							<a href="javascript:void(0);">2</a>
						</li>
						<li>
							<a href="javascript:void(0);">3</a>
						</li>
						<li>
							<a href="javascript:void(0);">4</a>
						</li>
						<li>
							<a href="javascript:void(0);">5</a>
						</li>
						<li>
							<a href="javascript:void(0);">&raquo;</a>
						</li>
					</ul>
				</div>

				<!-- 右侧 -->
				<div class="col-md-4">
					<div class="recommend-border block-padding wow bounceInRight animateds bk-w">
						<div>
							<!-- 标题 -->
							<p style="margin: 0 0 12px">
								<b><a href="javascript:void(0)">文章推荐</a></b>

								<em class="pull-right">
								<a href="javascript:void(0)">
									<i class="glyphicon glyphicon-refresh"></i>
									换一批
								</a>
							</em>
							</p>
							<div class="recommend">
								<ul style="padding: 0;">
									<li class="recommend-margin">
										<a href="javascript:void(0);">
											<!-- 内容预览 -->
											<em class="text-overflow" style="width: 77%;display: inline-block;">需要原谅吗？</em>
											<!-- 时间 -->
											<em class="pull-right">2016-05-12</em>
										</a>
									</li>
									<li class="recommend-margin">
										<a href="javascript:void(0);">
											<!-- 内容预览 -->
											<em class="text-overflow" style="width: 77%;display: inline-block;">不要谈感动自己的想象式恋爱</em>
											<!-- 时间 -->
											<em class="pull-right">2017-05-07</em>
										</a>
									</li>
									<li class="recommend-margin">
										<a href="javascript:void(0);">
											<!-- 内容预览 -->
											<em class="text-overflow" style="width: 77%;display: inline-block;">简述“自恋”型人格</em>
											<!-- 时间 -->
											<em class="pull-right">2017-11-26</em>
										</a>
									</li>
									<li class="recommend-margin">
										<a href="javascript:void(0);">
											<!-- 内容预览 -->
											<em class="text-overflow" style="width: 77%;display: inline-block;">想象≠真相</em>
											<!-- 时间 -->
											<em class="pull-right">2016-08-18</em>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- 第二个分类 -->
					<div class="recommend-border block-padding recommend-margin wow bounceInRight animated bk-w">
						<div>
							<!-- 标题 -->
							<p style="margin: 0 0 12px">
								<b><a href="javascript:void(0)">作者推荐</a></b>

								<em class="pull-right">
								<a href="javascript:void(0)">
									<i class="glyphicon glyphicon-refresh"></i>
									换一批
								</a>
							</em>
							</p>
							<div class="recommend">
								<ul style="padding: 0;">
									<li class="recommend-margin">
										<a href="javascript:void(0);">
											<!-- 内容预览 -->
											<em class="text-overflow" style="width: 77%;display: inline-block;">王彩艳</em>
											<!-- 时间 -->
											<em class="pull-right">2015-12-08</em>
										</a>
									</li>
									<li class="recommend-margin">
										<a href="javascript:void(0);">
											<!-- 内容预览 -->
											<em class="text-overflow" style="width: 77%;display: inline-block;">冯一心</em>
											<!-- 时间 -->
											<em class="pull-right">2016-02-20</em>
										</a>
									</li>
									<li class="recommend-margin">
										<a href="javascript:void(0);">
											<!-- 内容预览 -->
											<em class="text-overflow" style="width: 77%;display: inline-block;">周海</em>
											<!-- 时间 -->
											<em class="pull-right">2017-09-26</em>
										</a>
									</li>
									<li class="recommend-margin">
										<a href="javascript:void(0);">
											<!-- 内容预览 -->
											<em class="text-overflow" style="width: 77%;display: inline-block;">兰玲</em>
											<!-- 时间 -->
											<em class="pull-right">2018-06-30</em>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="QuoteContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>
