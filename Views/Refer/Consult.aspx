<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/master.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    心理咨询-咨询
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <script>
         $(function () {
             $("#Refer").attr("class", "active");
         });
    </script>
    <div class="container">
        <div class="row">
            <div class="col-md-10">
                <!--人物简介-->
                  <% System.Data.DataSet PCTinfo_ID = Session["PCTinfo_ID"] as System.Data.DataSet; %>
                
                 <div class="media recommend-img">
                    <div class="media-left">
                        <img src="<%=Url.Content(PCTinfo_ID.Tables[0].Rows[0][1].ToString())%>" alt="<%=PCTinfo_ID.Tables[0].Rows[0][0].ToString() %>" class="img-circle" />
                    </div>
                    <div class="media-body">
                        <h4 class="Name-Mtop"><%=PCTinfo_ID.Tables[0].Rows[0][0].ToString() %></h4>
                        <em><%=PCTinfo_ID.Tables[0].Rows[0][2].ToString() %></em>
                    </div>
                </div>
                 
               

                <!--问题描述-->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title">请描述您的问题</h2>
                    </div>
                    <!--内容-->
                    <textarea class="panel-body" style="width: 100%; height: 26rem; resize: none; border: none;" placeholder="请输入咨询内容..."></textarea>
                    <div class="panel-footer">
                        <h6>请注意：</h6>
                        <p>
                            <em>1.请注意不要透露您的个人隐私信息</em>
                            <em>2.我们采用匿名聊天技术，保证您的信息安全</em>
                        </p>
                        <div>
                            <label>
                                <input type="checkbox" name="synch" id="synch" class="pull" />
                                勾选同步到求助贴
                            </label>
                            <button class="btn btn-primary">确认提交</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="QuoteContent" runat="server">
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/video.css") %>" />
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="ScriptContent" runat="server">
    <script>
        $(function () {
            $("#Refer").addClass("active");
        });
    </script>

    <script>
        $(function () {
            $("#Refer").addClass("active");
        });
    </script>
</asp:Content>
