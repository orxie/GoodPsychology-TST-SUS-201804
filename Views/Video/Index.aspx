<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Vadio.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BeforeQuoteContent" runat="server">
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("../../Content/bootstrap.css") %>" />
    <link rel="stylesheet" href="<%=Url.Content("../../Content/common.css") %>">
    <link rel="stylesheet" href="<%=Url.Content("../../Content/self.css") %>">
    <link rel="stylesheet" href="<%=Url.Content("../../Content/index.css") %>">

    <script type='text/javascript' src="<%=Url.Content("../../Scripts/jquery.js") %>"></script>
    <script type='text/javascript' src="<%=Url.Content("../../Scripts/bootstrap.js") %>"></script>
    <script type='text/javascript' src="<%=Url.Content("../../Scripts/VadioScript.js") %>"></script>
    <script type='text/javascript' src="<%=Url.Content("../../Scripts/index.js") %>"></script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
      <div id="video-carousel" class="container carousel slide content-block" style="width: 100%; height: 100%;">
        <div class="row wow fadeInUp animated">
            <!-- 指示器 -->
            <ol class="carousel-indicators">
                <li data-target="#video-carousel" data-slide-to="0" class="active"></li>
                <li data-target="#video-carousel" data-slide-to="1"></li>
                <li data-target="#video-carousel" data-slide-to="2"></li>
                <li data-target="#video-carousel" data-slide-to="3"></li>
            </ol>
            <!-- 图片滚动 -->
            <div class="carousel-inner" role="listbox">
                <!-- 第一张 -->
                <div class="item active">
                    <a href="javascript:void(0);" data-toggle="modal" data-target="#myModal">
                        <img src="../../img/video/banner/4.jpg" alt="第一张" />
                    </a>
                </div>
                <!-- 第二张 -->
                <div class="item">
                    <img src="../../img/video/banner/2.jpg" alt="第二张" />
                </div>
                <!-- 第三张 -->
                <div class="item">
                    <img src="../../img/video/banner/3.jpg" alt="第三张" />
                </div>
                <!-- 第四张 -->
                <div class="item">
                    <img src="../../img/video/banner/1.jpg" alt="第四张" />
                </div>
            </div>
            <!-- 左右切换 -->
            <a href="#video-carousel" class="left carousel-control" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">上一张</span>
            </a>
            <a href="#video-carousel" class="right carousel-control" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">下一张</span>
            </a>
        </div>
    </div>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content" style="z-index: 50;">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">沙龙报名</h4>
                </div>
                <div class="modal-body">
                    <p class="message-indent">
                     宇宙中的一切都在你体内，向内寻求一切的答案。“Everything in the universe is within you. Ask all from yourself.”﻿——波斯诗人鲁米Rumi
                    </p>
                    <p class="message-indent">
                       人生没有彩排但是不可避免地有很多NG焦虑、拖延、压力大迷茫、人际关系紧张、情绪失控睡眠／饮食失调、病痛……要学会照顾自己从身体到心理，因为在自己的人生舞台上你不是路人甲。
                    </p>
                    <p class="message-indent">
                     有没有一种科学实用的办法可以系统地锻炼大脑功能增强心身联结？2017年10月至12月北京麻省大学医学院正念中心（UMASS CFM）正念减压MBSR合格师资Jade Zhou带领的正念减压MBSR八周课程邀请你一同探寻智慧心身疗愈之道。
                    </p>
                    <form action="#" class="row">
                        <div class="col-md-8 pull-right">
                            <label class="input-group">
                                <span class="input-group-addon">姓名：</span>
                                <input type="text" class="form-control" />
                            </label>
                            <label class="input-group">
                                <span class="input-group-addon">手机：</span>
                                <input type="text" class="form-control" />
                            </label>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary">报名</button>
                </div>
            </div>
        </div>
    </div>

    <!-- 内容 -->
    <div class="container">
        <div class="row">
            <!-- 家庭教育 -->
            <div class="col-md-12 content-block">
                <!-- 头标签 -->
                <h3 class="text-center page-header wow fadeInUp animated">热门活动</h3>
                <!-- 导航内容 -->
                <ul class="nav nav-pills wow fadeInUp animated">
                    <li class="navbar-brand"><b>课程分类</b></li>
                    <li role="presentation" class="active">
                        <a href="javascript:void(0);">不限</a>
                    </li>
                    <li role="presentation">
                        <a href="javascript:void(0);">婴幼儿</a>
                    </li>
                    <li role="presentation">
                        <a href="javascript:void(0);">儿童</a>
                    </li>
                    <li role="presentation">
                        <a href="javascript:void(0);">青少年</a>
                    </li>
                    <li role="presentation">
                        <a href="javascript:void(0);">亲自</a>
                    </li>
                    <li role="presentation">
                        <a href="javascript:void(0);">教育</a>
                    </li>
                    <li role="presentation">
                        <a href="javascript:void(0);">认知</a>
                    </li>
                </ul>
                <!-- 内容 -->
                <div>
                    <% System.Data.DataSet SalonActivityInfo = Session["SalonActivityInfo"] as System.Data.DataSet;
                       int tysu = 0;
                       if (SalonActivityInfo.Tables[0].Rows.Count <= 8)
                       {
                           tysu = SalonActivityInfo.Tables[0].Rows.Count;
                       }
                       if (SalonActivityInfo.Tables[0].Rows.Count > 8)
                       {
                           tysu = 8;
                       }
                        %>



                    <%for (int i = 0; i < tysu; i++)
			        {
			        %>
                     <div class="col-md-3 wow fadeInUp animated">
                        <div class="thumbnail">
                            <img src="<%=Url.Content(SalonActivityInfo.Tables[0].Rows[i][1].ToString()) %>" style="width: 310px; height: 230px; position: relative;" />
                            <div class="caption">
                                 <h4>
                                   <a href="#" onclick="Aclick('<%=SalonActivityInfo.Tables[0].Rows[i][0].ToString() %>')" data-toggle="modal" data-target="#Vadio">
                                   <%=SalonActivityInfo.Tables[0].Rows[i][0].ToString() %>
                                </a>
                                </h4>

                                <em><%=SalonActivityInfo.Tables[0].Rows[i][3].ToString() %></em>
                                <ul class="pull-right">
                                    <li style="float: left; padding-right: 5px;">
                                        <i class="glyphicon glyphicon-eye-open"></i><%=SalonActivityInfo.Tables[0].Rows[i][4].ToString() %>
                                    </li>
                                    <li style="float: right;">
                                        <i class="glyphicon glyphicon-thumbs-up"></i><%=SalonActivityInfo.Tables[0].Rows[i][5].ToString() %>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <%}
                  %>
                </div>
            </div>
            <!-- 职场心理 -->
            <div class="col-md-12 content-block">
                <!-- 头标签 -->
                <h3 class="text-center page-header wow fadeInUp animated">最近一月</h3>
                <!-- 导航内容 -->
                <ul class="nav nav-pills wow fadeInUp animated">
                    <li class="navbar-brand"><b>课程分类</b></li>
                    <li role="presentation" class="active">
                        <a href="javascript:void(0);">不限</a>
                    </li>
                    <li role="presentation">
                        <a href="javascript:void(0);">婴幼儿</a>
                    </li>
                    <li role="presentation">
                        <a href="javascript:void(0);">儿童</a>
                    </li>
                    <li role="presentation">
                        <a href="javascript:void(0);">青少年</a>
                    </li>
                    <li role="presentation">
                        <a href="javascript:void(0);">亲自</a>
                    </li>
                    <li role="presentation">
                        <a href="javascript:void(0);">教育</a>
                    </li>
                    <li role="presentation">
                        <a href="javascript:void(0);">认知</a>
                    </li>
                </ul>
                <!-- 内容 -->
                <div>

                       <% System.Data.DataSet SalonActivityInfoxia = Session["SalonActivityInfoxia"] as System.Data.DataSet;
                          int tyu = 0;
                          if ( SalonActivityInfoxia.Tables[0].Rows.Count<=8)
                          {
                              tyu = SalonActivityInfoxia.Tables[0].Rows.Count;
                          }
                          if (SalonActivityInfoxia.Tables[0].Rows.Count>8)
                          {
                              tyu = 8;
                          }
                          %>



                    <%for (int i = 0; i < tyu; i++)
			        {
			        %>
                     <div class="col-md-3 wow fadeInUp animated">
                        <div class="thumbnail">
                            <img src="<%=Url.Content(SalonActivityInfoxia.Tables[0].Rows[i][1].ToString()) %>" style="width: 310px; height: 230px; position: relative;" />
                            <div class="caption">
                                 <h4>
                             <%--    <%:Html.ActionLink("向她提问", "Index", "Video", new { id = SalonActivityInfoxia.Tables[0].Rows[i][0].ToString() }, new { @data-toggle='modal'})%>--%>

                                   <a href="#" onclick="Aclick('<%=SalonActivityInfoxia.Tables[0].Rows[i][0].ToString() %>')" data-toggle="modal" data-target="#Vadio">
                                   <%=SalonActivityInfoxia.Tables[0].Rows[i][0].ToString() %>
                                </a>
                                </h4>

                                <em><%=SalonActivityInfoxia.Tables[0].Rows[i][3].ToString() %></em>
                                <ul class="pull-right">
                                    <li style="float: left; padding-right: 5px;">
                                        <i class="glyphicon glyphicon-eye-open"></i><%=SalonActivityInfoxia.Tables[0].Rows[i][4].ToString() %>
                                    </li>
                                    <li style="float: right;">
                                        <i class="glyphicon glyphicon-thumbs-up"></i><%=SalonActivityInfoxia.Tables[0].Rows[i][5].ToString() %>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <%}
                  %>
                </div>
            </div>
        </div>
    </div>
    <!--视频模态框-->
            <div class="modal fade" id="Vadio" role="dialog" aria-labelledby="videoPlayModal" aria-hidden="true">
				<div class="modal-dialog" style="width:960px;">
					<div class="modal-content" style="border: 0px;border-radius: 0px;">
						<div class="modal-body">
							<a class="close" data-dismiss="modal" style="position:absolute; top:5px; right:5px;">×</a>
						</div>
					</div>
					<div id="filelist">
						<video id="videodemo" class="video_link" preload="preload" style="width=100%;height=100%;object-fit:fill" controls="" width="960" height="500" poster="" src="">
							<source src="" type="video/mp4">
						</video>
					</div>
				</div>
			</div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptContent" runat="server">
     <script>
         $(function () {
             $("#Video").addClass("active");
         });
         function Aclick(Url)
         {
             var urla="../../vadio/"+Url+".mp4";
             $("#videodemo").attr("src", urla);
         }
    </script>
</asp:Content>
