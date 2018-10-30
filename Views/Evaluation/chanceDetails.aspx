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
    <% DataSet EVlb = Session["EVCategory"] as DataSet;%>
    <div class="container">
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
        <div class="row">
            <div class="col-md-8">
                <!--页头-->
                <div class="page-header">
                    <h2><%=EVlb.Tables[0].Rows[0][0] %>测试</h2>
                    <small>
                        <span>
                            <%=EVlb.Tables[0].Rows[0][1] %>
                        </span>
                    </small>
                </div>
                <% DataSet SELECEEVcst = Session["SELECEEVcst"] as DataSet;%>
                <!--测试题-->
                <div class="row">
                    <%for (int i = 0; i < SELECEEVcst.Tables[0].Rows.Count; i++)
                      {%>
                    <div class="col-md-6">
                        <a href="<%=Url.Content(SELECEEVcst.Tables[0].Rows[i][0].ToString()+"?ID="+SELECEEVcst.Tables[0].Rows[i][5]) %>" target="_self">
                            <div class="thumbnail">
                                <img src="<%=Url.Content(SELECEEVcst.Tables[0].Rows[i][1] as string)%>" alt="<%=SELECEEVcst.Tables[0].Rows[i][2] %>">
                                <div class="caption">
                                    <h4>
                                        <b><%=SELECEEVcst.Tables[0].Rows[i][2] %></b>
                                    </h4>

                                    <em class="text-success"><%=SELECEEVcst.Tables[0].Rows[i][3] %></em>
                                    <em class="pull-right"><%=SELECEEVcst.Tables[0].Rows[i][4] %>人进行过测试</em>
                                </div>
                            </div>
                        </a>
                    </div>
                    <%} %>
                </div>

                <nav aria-label="Page navigation">
                    <ul class="pagination">
                        <li>
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li class="active">
                            <a href="#">1</a>
                        </li>
                        <li>
                            <a href="#">2</a>
                        </li>
                        <li>
                            <a href="#">3</a>
                        </li>
                        <li>
                            <a href="#">4</a>
                        </li>
                        <li>
                            <a href="#">5</a>
                        </li>
                        <li>
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="col-md-4 visible-lg" style="border: 1px solid #eee; margin-top: 41px; background-color: #ddd;">
                 <div class="page-header">
                        <h4>相关测试题</h4>
                  </div>
                <% DataSet set2 = Session["sp_EvaluationTCBy_ECID"] as DataSet; %>
                <!--测试推荐-->
                <ul class="test-recommend">
                    <%for (int i = 0; i < set2.Tables[0].Rows.Count; i++)
                      {%>
                    <li>
                        <a href="<%=Url.Content("~/Evaluation/secondEvaluation"+"?ID="+set2.Tables[0].Rows[i][3]) %>">
                            <img src="<%=Url.Content(set2.Tables[0].Rows[i][1].ToString())%>" alt="<%=set2.Tables[0].Rows[i][2].ToString() %>" />
                            <i><%=set2.Tables[0].Rows[i][2].ToString() %></i>
                        </a>
                    </li>
                    <% }%>
                </ul>

                <!--心理老师推荐-->
                <div>
                    <div class="page-header">
                        <h4>心理专家推荐</h4>
                    </div>
                    <div>
                        <%DataSet set3 = Session["IndexMan"] as DataSet; %>
                        <ul>
                         <%for (int i = 0; i < set3.Tables[0].Rows.Count; i++)
                          { %>
                            <li>
                                <div class="media recommend-img">
                                    <a href="#">
                                        <div class="media-left">
                                            <!--<a href="#">-->
                                            <img class="media-object img-circle" src="<%=Url.Content(set3.Tables[0].Rows[i][2].ToString())%>" alt="<%=set3.Tables[0].Rows[i][0].ToString() %>" />
                                            <!--</a>-->
                                        </div>
                                        <div class="media-body">
                                            <h4 class="Name-Mtop"><%=set3.Tables[0].Rows[i][0].ToString() %></h4>
                                            <em><%=set3.Tables[0].Rows[i][1].ToString() %></em>
                                        </div>
                                    </a>
                                </div>
                            </li>
                            <%}%>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

<asp:Content ID="Content" ContentPlaceHolderID="BeforeQuoteContent" runat="server">
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
