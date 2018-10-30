<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/master.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<%@ Import Namespace="System.Data" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    心理测评
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        $(function () {
            $("#Evaluation").addClass("active");
        });
       
        
    </script>

    <div class="container content-block">
        <div class="row content-padding">
            <!-- 左侧推荐 -->
            <!-- 右侧评价 -->
            <div class="wrap wow fadeInUp animated">
                <ul id="typelist">

                    <% DataSet student = Session["evaluation"] as DataSet; %>
                    <%for (int i = 0; i < student.Tables[0].Rows.Count; i++)
			        {
			        %>
                    <li>
                        <%--<%:Html.ActionLink("secondEvaluation","Evaluation",new{id=student.Tables[0].Rows[i]["ECID"]},new{@class="as"}) %>--%>
                        <a href="<%=Url.Content(student.Tables[0].Rows[i][3].ToString()+"?ID="+student.Tables[0].Rows[i][4]) %>">
                            <img src="<%=Url.Content(student.Tables[0].Rows[i][1].ToString())%>" alt="<%=student.Tables[0].Rows[i][2].ToString() %>"><i><%=student.Tables[0].Rows[i][0].ToString() %></i></a>
                    </li>

                    <%}%>
                </ul>
            </div>

            <div class="wrap  wow fadeInUp animated">
                <p class="htitle">— 热门测评 —</p>
                <ul class="cslist">
                    <% DataSet EvaluationTC = Session["EvaluationTC"] as DataSet; %>
                    <%for (int i = 0; i < EvaluationTC.Tables[0].Rows.Count; i++)
			        {
			        %>
                    <li class="item">
                        <a href="<%=Url.Content(EvaluationTC.Tables[0].Rows[i][0].ToString()+"?ID="+EvaluationTC.Tables[0].Rows[i][6]) %>" target="_self">
                            <img src="<%=Url.Content(EvaluationTC.Tables[0].Rows[i][1].ToString())%>" alt="<%=Url.Content(EvaluationTC.Tables[0].Rows[i][2].ToString()) %>" /><span><b><%=Url.Content(EvaluationTC.Tables[0].Rows[i][2].ToString()) %></b>
                                <i class="des"><%=Url.Content(EvaluationTC.Tables[0].Rows[i][3].ToString()).Substring(0,40) %>...</i>
                                <i class="remark">
                                    <em class="pay"><%=Url.Content(EvaluationTC.Tables[0].Rows[i][4].ToString()) %></em>
                                    <em class="re"><%=Url.Content(EvaluationTC.Tables[0].Rows[i][5].ToString()) %>人测过</em>
                                    <br class="clear" />
                                </i></span></a>
                    </li>
                    <%}%>
                </ul>
                <br class="clear" />
                <br class="clear" />
            </div>

            <div class="wrap wow fadeInUp animated" data-wow-delay="0.5s">
                <p class="htitle">— 趣味测试 —</p>
                <ul class="cslist">
                    <% DataSet EvaluationTCleibieBy_3 = Session["EvaluationTCleibieBy_3"] as DataSet; %>
                    <%for (int i = 0; i < EvaluationTCleibieBy_3.Tables[0].Rows.Count; i++)
                      {%>
                    <li class="item">
                        <a href="<%=Url.Content(EvaluationTCleibieBy_3.Tables[0].Rows[i][0].ToString()+"?ID="+EvaluationTCleibieBy_3.Tables[0].Rows[i][6]) %>" target="_self">
                            <img src="<%=Url.Content(EvaluationTCleibieBy_3.Tables[0].Rows[i][1].ToString())%>" alt="<%=Url.Content(EvaluationTCleibieBy_3.Tables[0].Rows[i][2].ToString()) %>" /><span><b><%=Url.Content(EvaluationTCleibieBy_3.Tables[0].Rows[i][2].ToString()) %></b>
                                <i class="des"><%=Url.Content(EvaluationTCleibieBy_3.Tables[0].Rows[i][3].ToString()).Substring(0,40) %>...</i>
                                <i class="remark">
                                    <em class="pay"><%=Url.Content(EvaluationTCleibieBy_3.Tables[0].Rows[i][4].ToString()) %></em>
                                    <em class="re"><%=Url.Content(EvaluationTCleibieBy_3.Tables[0].Rows[i][5].ToString()) %>人测过</em>
                                    <br class="clear" />
                                </i></span></a>
                    </li>
                    <% }
                      %>              
                    <li class="more">
                        <a id="OKbtn">更多趣味测试&nbsp;&nbsp;</a>
                    </li>
                         <script>
                             $(function () {
                                 $("#OKbtn").click(function () {
                                     alert();
                                 });
                             });
                        </script>
                </ul>
            </div>

            <div class="wrap wow fadeInUp animated">
                <p class="htitle">大家正在测...</p>
                <ul id="cslist" class="-1">
                    <%DataSet sp_EvaluationTOP15 = Session["EvaluationTOP15"] as DataSet; %>
                    <%for (int i = 0; i < sp_EvaluationTOP15.Tables[0].Rows.Count; i++)
                      {%> 
                    <li class="item wow fadeInUp animated">
                            <a href="<%=Url.Content(sp_EvaluationTOP15.Tables[0].Rows[i][1].ToString()+"?ID="+sp_EvaluationTOP15.Tables[0].Rows[i][7]) %>" target="_self">
                            <img src="<%=Url.Content(sp_EvaluationTOP15.Tables[0].Rows[i][2].ToString())%>" alt="<%=Url.Content(sp_EvaluationTOP15.Tables[0].Rows[i][3].ToString()) %>" /><span><b><%=Url.Content(sp_EvaluationTOP15.Tables[0].Rows[i][3].ToString()) %></b>
                                <i class="des"><%=Url.Content(sp_EvaluationTOP15.Tables[0].Rows[i][4].ToString().Substring(0,40))%>...</i>
                                <i class="remark">
                                    <em class="pay"><%=Url.Content(sp_EvaluationTOP15.Tables[0].Rows[i][5].ToString()) %></em>
                                    <em class="re"><%=Url.Content(sp_EvaluationTOP15.Tables[0].Rows[i][6].ToString()) %>人测过</em>
                                    <br class="clear" />
                             </i></span></a>
                    </li>
                      <%}
                         %>       
                </ul>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content" ContentPlaceHolderID="BeforeQuoteContent" runat="server">
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/animate.css") %>" />
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/BBS.css") %>" />
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/Bsshome.css") %>" />

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptContent" runat="server">
    <script>
        $(function () {
            $("#Evaluation").addClass("active");
        });
    </script>
</asp:Content>

