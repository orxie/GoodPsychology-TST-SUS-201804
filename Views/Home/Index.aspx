<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Master.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    首页
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        $(function () {
            $("#Home").attr("class", "active");
        });
    </script>
    <!-- banner -->
		<div class="content-block container">
			<div class="row">
				<!-- 轮播 -->
				<div id="myCarousel" class="carousel slide pull-left wow bounceInLeft  animated" style="width: 65%;" data-ride="carousel" data-interval="5000" data-wrap="true">
					<!-- 指标 -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>
					<!-- 项目 -->
					<div class="carousel-inner banner-radius">
						
						<% System.Data.DataSet Banner = Session["sp_Banner"] as System.Data.DataSet;
                         
                           %>
                        <div class="item active"><img src="<%=Url.Content(Banner.Tables[0].Rows[0][1].ToString()) %>" alt="<%=Url.Content(Banner.Tables[0].Rows[0][0].ToString()) %>"></div>
                        <%for (int i = 1; i < Banner.Tables[0].Rows.Count; i++)
			            {
			            %>
                            <div class="item"><img src="<%=Url.Content(Banner.Tables[0].Rows[i][1].ToString()) %>" alt="<%=Url.Content(Banner.Tables[0].Rows[i][0].ToString()) %>"></div>
                        <%}%>
					</div>
					<!-- 导航 -->
					<a href="javascript:void(0);" class="carousel-control left banner-radius" data-slide="prev" data-target="#myCarousel">&lsaquo;</a>
					<a href="javascript:void(0);" class="carousel-control right banner-radius" data-slide="next" data-target="#myCarousel">&rsaquo;</a>
				</div>
				<div class="wow bounceInRight  animated" style="width: 35%; display: inline-block; " >
					<div class="banner-right">
						<p>
							<label>23977</label> 名心理专家汇聚在这里
						</p>
						<h2>帮您解决心理困惑</h2>
						<p>
							已解决
							<label>442</label> 个在线心理问题
						</p>
						<button class="btn btn-lg btn-info">立即解决</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 心理测评 -->
		<div class="container  content-block wow fadeInUp animated">
			<div class="row content-padding">
				<!-- 页头 -->
				<div class="page-header">
					<h3>
						心理测评
						<small class="pull-right">
							<a href="<%=Url.Content("~/Evaluation/Index") %>">更多&gt;</a>
						</small>
					</h3>
				</div>

				<!-- 内容 -->
				<div class="row">
                       <% System.Data.DataSet EvaluationTC = Session["EvaluationTC"] as System.Data.DataSet;
                         
                           %>
                    <%for (int i = 0; i < EvaluationTC.Tables[0].Rows.Count; i++)
			        {
			        %>
                    <div class="col-sm-6 col-md-4">
						<div class="thumbnail">
                            <a href="<%=Url.Content(EvaluationTC.Tables[0].Rows[i][0].ToString()+"?ID="+EvaluationTC.Tables[0].Rows[i][6]) %>" target="_self">
							    <img src="<%=Url.Content(EvaluationTC.Tables[0].Rows[i][1].ToString())%>" alt="<%=Url.Content(EvaluationTC.Tables[0].Rows[i][2].ToString()) %>" />
							    <div class="caption">
								    <h4><b><%=Url.Content(EvaluationTC.Tables[0].Rows[i][2].ToString()) %></b></h4>

								    <em class="text-success"><%=Url.Content(EvaluationTC.Tables[0].Rows[i][4].ToString()) %></em>
								    <em class="pull-right"><%=Url.Content(EvaluationTC.Tables[0].Rows[i][5].ToString()) %>人进行过测试</em>
							    </div>
                            </a>
						</div>
					</div>
                    <%}%>
					
				</div>
			</div>
		</div>

		<!-- 心理咨询 -->
		<div class="container content-block">
			<div class="row content-padding">
				<!-- 左侧推荐 -->
				<div class="col-md-8 pull-left wow bounceInLeft animated">
					<!-- 头标签 -->
					<div class="page-header">
						<h3>心理咨询
						<small class="pull-right">
							<a href="<%=Url.Content("~/Refer/Index") %>">更多&gt;</a>
						</small>
					</h3>
					</div>
					<!-- 推荐医师 -->
					<div class="row">
                             <% System.Data.DataSet IndexMan = Session["IndexMan"] as System.Data.DataSet;
                                int count = 0;
                                int cunot1 = 0;
                                if (IndexMan.Tables[0].Rows.Count>=6)
                                {
                                    count = 6;
                                }
                                else if (IndexMan.Tables[0].Rows.Count<6)
                                {
                                    count = IndexMan.Tables[0].Rows.Count;
                                }
                                if (IndexMan.Tables[0].Rows.Count >= 12)
                                {
                                    cunot1 = 12;
                                }
                                else if (IndexMan.Tables[0].Rows.Count < 12)
                                {
                                    cunot1 = IndexMan.Tables[0].Rows.Count;
                                }

                                %>
                    <%for (int i = 0; i < count; i++)
			        {
			        %>
                        <div class="col-md-2 content-active">
							<a href="<%=Url.Content("~/Refer/Consult/"+IndexMan.Tables[0].Rows[i][2])%>">
								<div class="thumbnail">
									<img src="<%=Url.Content(IndexMan.Tables[0].Rows[i][1].ToString()) %>" style="width: 100px; height: 100px;" alt="<%=IndexMan.Tables[0].Rows[i][0].ToString()%>" class="img-circle">
									<div class="caption">
										<h5 class="content-center"><%=IndexMan.Tables[0].Rows[i][0].ToString()%></h5>
									</div>
								</div>
							</a>
						</div>
                    <%}%>
						

					</div>
					<div class="row">
                        <%for (int i = 6; i < cunot1; i++)
			        {
			        %>
                        <div class="col-md-2 content-active">
							<a href="<%=Url.Content("~/Refer/Consult/"+IndexMan.Tables[0].Rows[i][2])%>">
								<div class="thumbnail">
									<img src="<%=Url.Content(IndexMan.Tables[0].Rows[i][1].ToString()) %>" style="width: 100px; height: 100px;" alt="<%=IndexMan.Tables[0].Rows[i][0].ToString()%>" class="img-circle">
									<div class="caption">
										<h5 class="content-center"><%=IndexMan.Tables[0].Rows[i][0].ToString()%></h5>
									</div>
								</div>
							</a>
						</div>
                    <%}%>
					</div>
				</div>

				<!-- 右侧评价 -->
				<div class="col-md-4 wow bounceInRight animated">
					<div class="row">
						<!-- 页 -->
						<div class="page-header" style="margin-top: 27px;">
							<h4 style="color: #ddd;">
							咨询点评
							<%--<small class="pull-right"><a href="javascript:void(0);" style="color: #ddd;">更多&gt;</a></small>--%>
						</h4>
						</div>
						<!-- 评价 --> 
                    <% System.Data.DataSet RecordConsultInfo_3 = Session["RecordConsultInfo_3"] as System.Data.DataSet;%>
                    <%for (int i = 0; i < RecordConsultInfo_3.Tables[0].Rows.Count; i++)
			        {
			        %>
                    <div>
							<div>
								<a href="javascript:void(0);">用户<%=RecordConsultInfo_3.Tables[0].Rows[i][0].ToString()%></a>&nbsp;评论了&nbsp;
								<a href="javascript:void(0);"><%=RecordConsultInfo_3.Tables[0].Rows[i][1].ToString()%></a>&nbsp;心理咨询师
							</div>
							<button class="btn btn-default recommend-counselor" style="text-align: left; padding: 10px 186px 10px 10px; margin: 10px 0;">
							<b>咨询结果：<%=RecordConsultInfo_3.Tables[0].Rows[i][3].ToString()%></b><br />
							<em><%=RecordConsultInfo_3.Tables[0].Rows[i][2].ToString()%></em>
						</button>
						</div>
                    <%}%>
						
					</div>
				</div>
					<!-- 机构入驻 -->
					<div class="row" style="margin-bottom: 10px;">
						<div class="col-md-12">
							<h5>
							<em>四川</em>
							心理机构推荐
						</h5>

							<div class="col-md-2 wow fadeInUpBig animated" >
								<button class="btn btn-default" style="text-align: center; padding: 10px 30px;">
								<p>等待心理机构入驻</p>
								<a href="javascript:void(0);">了解详情</a>
							</button>
							</div>
							<div class="col-md-2 wow fadeInUpBig animated" data-wow-delay="0.2s">
								<button class="btn btn-default" style="text-align: center; padding: 10px 30px;">
								<p>等待心理机构入驻</p>
								<a href="javascript:void(0);">了解详情</a>
							</button>
							</div>
							<div class="col-md-2 wow fadeInUpBig animated"  data-wow-delay="0.4s">
								<button class="btn btn-default" style="text-align: center; padding: 10px 30px;">
								<p>等待心理机构入驻</p>
								<a href="javascript:void(0);">了解详情</a>
							</button>
							</div>
							<div class="col-md-2 wow fadeInUpBig animated"  data-wow-delay="0.6s">
								<button class="btn btn-default" style="text-align: center; padding: 10px 30px;">
								<p>等待心理机构入驻</p>
								<a href="javascript:void(0);">了解详情</a>
							</button>
							</div>
							<div class="col-md-2 wow fadeInUpBig animated"  data-wow-delay="0.8s">
								<button class="btn btn-default" style="text-align: center; padding: 10px 30px;">
								<p>等待心理机构入驻</p>
								<a href="javascript:void(0);">了解详情</a>
							</button>
							</div>
							<div class="col-md-2 wow fadeInUpBig animated"  data-wow-delay="1s">
								<button class="btn btn-default" style="text-align: center; padding: 10px 30px;">
								<p>等待心理机构入驻</p>
								<a href="javascript:void(0);">了解详情</a>
							</button>
							</div>
						</div>
					</div>
			</div>
		</div>
		

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="QuoteContent" runat="server">
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/self.css") %>" />
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/animate.css") %>" />
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptContent" runat="server">
    
</asp:Content>