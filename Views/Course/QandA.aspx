<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/master.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    心路历程
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
		<link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/messageDetail.css") %>">
		<link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/QandA.css") %>"/>
<!--内容-->
    <script>
        $(function () {
            $("#Course").addClass("active");
        });
    </script>
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<!--页头-->
					<div class="page-header">
						<h2>[求助]我感觉自己有点抑郁，我不知道该怎么办</h2>
						<small>
							<span>2018-05-09</span>
							<span>多少</span>
							<em>人观看</em>
							
							
							<span>多少</span>
							<em>人评论</em>
						</small>
					</div>
					<!--问题-->
					<div class="message-details" id="message-details">
						<section style="margin: 10px; border-bottom: 1px solid #eee;">							
							<!--内容-->
							<p class="message-indent">这几天老是觉得很烦躁， 有时在睡后大约十分钟就会出现心慌... 最近一直担心自己会失眠，但是越担心，心就会越慌， 老是睡不好，一天好像什么事情都不想做了， 就是觉得心烦，但是我对生活还是有追求的，会为了自己的理想而奋斗的！ 每次只要出现心慌的症...</p>
						</section>
					</div>					
					<div class="media" style="border-bottom: 1px solid #eee; padding: 20px 0;">
						<div class="media-left">
						    <a href="#">
						      	<img class="media-object" src="<%=Url.Content("../../img/userinfo/face.jpg") %>" alt="..." style="width: 7em; height: 7em;">
						    </a>
						</div>
						<div class="media-body">
						    <h4 class="media-heading">Media heading</h4>
						    <p class="message-indent">迷茫是忧郁的帮凶，当你迷茫的时候，各种负面思想就会随之产生。找不到工作啊，不知道做什么，或者有工作却觉得工作很无聊很痛苦啊，不知道要不要换工作啊，为什么别人这么成功，我这么失败，活着真没有意思啊……越想越沮丧。</p>
							<div class="media">
								<div class="media-left">
								    <a href="#">
								      	<img class="media-object" src="<%=Url.Content("../../img/userinfo/face.jpg") %>" alt="..." style="width: 7em; height: 7em;">
								    </a>
								</div>
								<div class="media-body">
								    <h4 class="media-heading">Media heading</h4>
								    <p class="message-indent">迷茫是忧郁的帮凶，当你迷茫的时候，各种负面思想就会随之产生。找不到工作啊，不知道做什么，或者有工作却觉得工作很无聊很痛苦啊，不知道要不要换工作啊，为什么别人这么成功，我这么失败，活着真没有意思啊……越想越沮丧。</p>
								</div>
							</div>
						</div>
					</div>
					<div class="media" style="border-bottom: 1px solid #eee; padding: 20px 0;">
						<div class="media-left">
						    <a href="#">
						      	<img class="media-object" src="<%=Url.Content("../../img/userinfo/face.jpg") %>" alt="..." style="width: 7em; height: 7em;">
						    </a>
						</div>
						<div class="media-body">
						    <h4 class="media-heading">Media heading</h4>
						    <p class="message-indent">迷茫是忧郁的帮凶，当你迷茫的时候，各种负面思想就会随之产生。找不到工作啊，不知道做什么，或者有工作却觉得工作很无聊很痛苦啊，不知道要不要换工作啊，为什么别人这么成功，我这么失败，活着真没有意思啊……越想越沮丧。</p>
							<div class="media">
								<div class="media-left">
								    <a href="#">
								      	<img class="media-object" src="<%=Url.Content("../../img/userinfo/face.jpg") %>" alt="..." style="width: 7em; height: 7em;">
								    </a>
								</div>
								<div class="media-body">
								    <h4 class="media-heading">Media heading</h4>
								    <p class="message-indent">迷茫是忧郁的帮凶，当你迷茫的时候，各种负面思想就会随之产生。找不到工作啊，不知道做什么，或者有工作却觉得工作很无聊很痛苦啊，不知道要不要换工作啊，为什么别人这么成功，我这么失败，活着真没有意思啊……越想越沮丧。</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			
				<!--推荐-->
				<div class="col-md-4 visible-lg" style="border: 1px solid #eee; margin-top: 20px;background-color: #ddd;">
					<!--测试推荐-->
					<ul class="test-recommend">
						<li>
							<a href="javascript:void(0);">
								<img src="<%=Url.Content("../../img/evaluation/5.jpg") %>" alt="瑞文标准智力测验(SPM)" />
								<i>瑞文标准智力测验(SPM)</i>
							</a>
						</li>
						<li>
							<a href="javascript:void(0);">
								<img src="<%=Url.Content("../../img/evaluation/5.jpg") %>" alt="好色程度测试" />
								<i>好色程度测试</i>
							</a>
						</li>
						<li>
							<a href="javascript:void(0);">
								<img src="<%=Url.Content("../../img/evaluation/5.jpg") %>" alt="测隐藏在你表面下的恐怖人格？" />
								<i>测隐藏在你表面下的恐怖人格？</i>
							</a>试专业量表(SDS)
						</li>
					</ul>
					
					<!--心理老师推荐-->
					<div>
						<div class="page-header">
							<h4>心理专家推荐</h4>
						</div>
						<div>
							<ul>
								<li>
									<div class="media recommend-img">
										<div class="media-left">
											<!--<a href="#">-->
											<img class="media-object img-circle" src="<%=Url.Content("../../img/counselor/1.jpg") %>" alt="周文" />
										<!--</a>-->
										</div>
										<div class="media-body">
											<h4 class="media-heading">周文</h4>
											<em>成都 金牛区</em>
										</div>
									</div>
								</li>
								<li>
									<div class="media recommend-img">
										<div class="media-left">
											<img src="<%=Url.Content("../../img/counselor/1.jpg") %>" class="media-object img-circle" alt="周文" />
										</div>
										<div class="media-body">
											<h4 class="media-heading">周文</h4>
											<em>成都 金牛区</em>
										</div>
									</div>
								</li>
								<li>
									<div class="media recommend-img">
										<div class="media-left">
											<img src="<%=Url.Content("../../img/counselor/1.jpg") %>" class="media-object img-circle" alt="周文" />
										</div>
										<div class="media-body">
											<h5 class="media-heading">周文</h5>
											<em>成都 金牛区</em>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="BeforeQuoteContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="QuoteMiddleContent" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="QuoteContent" runat="server">
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>
