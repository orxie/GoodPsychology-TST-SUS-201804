<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/master.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    心理咨询
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <script>
         $(function () {
             $("#Refer").attr("class", "active");
         });
    </script>
   
    <div class="wrap pd wow fadeInUp animated">
        <div id="area">
            <ul class="location wd">
                <li class="area">
                    <i class="bg"></i>
                    <a href="javascript:void(0);" id="ihcity">四川</a>
                    <a href="javascript:void(0);" id="ihproper">成都</a>
                    <a href="javascript:void(0);" class="c_btn" >切换</a>
                    <br class="clear" />
                </li>
                <li class="children">
                    <a href="javascript:void(0);">青羊</a>
                    <a href="javascript:void(0);">双流</a>
                    <a href="javascript:void(0);">成华</a>
                    <a href="javascript:void(0);">锦江</a>
                    <a href="javascript:void(0);">金牛</a>
                    <a href="javascript:void(0);">新都</a>
                    <a href="javascript:void(0);">龙泉驿</a>
                    <a href="javascript:void(0);">武侯</a>
                    <a href="javascript:void(0);">郫县</a>
                    <a href="javascript:void(0);">温江</a>
                </li>
                <li class="zc">
                    <i>擅长类型：</i>
                    <a href="javascript:void(0);" class="on">全部</a>
                    <a href="javascript:void(0);">婚恋情感</a>
                    <a href="javascript:void(0);">青少年心理干预</a>
                    <a href="javascript:void(0);">人际关系</a>
                    <a href="javascript:void(0);">性心理</a>
                    <a href="javascript:void(0);">情绪调节</a>
                    <a href="javascript:void(0);">焦虑抑郁</a>
                    <a href="javascript:void(0);">催眠</a>
                    <a href="javascript:void(0);" onclick="cityindex.zcmore(this)">更多...</a>
                </li>
            </ul>
            <ul class="officer">
                <li class="tit">四川分站主任咨询师</li>
                <li class="item">
                    <a href="javascript:void(0);" target="_blank" class="avatar">
                        <img src="<%=Url.Content("~/img/refer/avatar_large.gif")%>" alt="查看详情" />
                    </a>
                    <span>
                        <a href="javascript:void(0);" target="_blank" class="un">招募中...</a>
                        <i>申请资格：教授、博士、电视台特邀心理专家优先...
                            <a href="javascript:void(0);" target="_blank">详情&nbsp;&gt;&gt;</a>
                        </i>
                    </span>
                    <br class="clear" />
                </li>
            </ul>
            <br class="clear" />
        </div>
    </div>
    <div class="wrap">
        <p class="c-tit wow fadeInUp animated">
            <a href="javascript:void(0);">四川心理专家</a>
        </p>
        <ul class="dr-list">
               <% System.Data.DataSet PTCInfo = Session["PTCInfo"] as System.Data.DataSet;
                  int ass = 0;
                  if (PTCInfo.Tables[0].Rows.Count>6)
                  {
                      ass = 6;
                  }
                  if (PTCInfo.Tables[0].Rows.Count<6)
                  {
                      ass = PTCInfo.Tables[0].Rows.Count;
                  }
                   %>
                    <%for (int i = 0; i < ass; i++)
			        {
			        %>
                      <li class="wow fadeInUp animated">
                        <a href="javascript:void(0);" class="avatar" target="_blank">
                            <img src="<%=Url.Content(PTCInfo.Tables[0].Rows[i][11].ToString())%>" alt="<%=PTCInfo.Tables[0].Rows[i][2].ToString() %>" />
                        </a>
                        <span class="txt">
                            <a href="javascript:void(0);" class="un" target="_blank"><%=PTCInfo.Tables[0].Rows[i][2].ToString() %></a>
                            <img src="<%=Url.Content("~/img/refer/rz1.gif")%>" alt="实名资质认证" class="rz" />
                            <img src="<%=Url.Content("~/img/refer/icon4.gif")%>" alt="高级推广" class="tj" />
                            <br />
                            <%=PTCInfo.Tables[0].Rows[i][3].ToString() %>&nbsp;&nbsp;<%=PTCInfo.Tables[0].Rows[i][4].ToString().Substring(2,2) %>后&nbsp;&nbsp;<%=PTCInfo.Tables[0].Rows[i][5].ToString() %>&nbsp;&nbsp;<%=PTCInfo.Tables[0].Rows[i][6].ToString() %>
                            <br />
                            <%=PTCInfo.Tables[0].Rows[i][12].ToString() %>
                            <a href="javascript:void(0);" target="_blank">详情&gt;</a>
                            <br />
                            <% 
                            //访问量判断
                            string fwl = "";
                            if (PTCInfo.Tables[0].Rows[i][10].ToString().Length>=5)
	                        {
                                fwl = Convert.ToInt32(PTCInfo.Tables[0].Rows[i][10].ToString()) * 0.0001 + "万";
                            }
                             else
                             {
                                 fwl = PTCInfo.Tables[0].Rows[i][10].ToString();
                             }                                                                                                                                        
                            %>
                            <a href="javascript:void(0);" class="haoping" style="color: #a7a7a7">好评等级(专家)</a>&nbsp;&nbsp;好评数(4066)&nbsp;&nbsp;留言案例(6543)&nbsp;&nbsp;访问量(<%=fwl%>)
                            <br />
                            <span>
                                <i class="icons"></i>
                                <b>
                                    <em><%=PTCInfo.Tables[0].Rows[i][8].ToString() %></em>&nbsp;&nbsp;欢迎来电预约！</b>
                            </span>
                        </span>
                        <span class="zc"></span>
                        <span class="findzx">
                             <%:Html.ActionLink("向她提问", "Consult", "Refer", new { id = PTCInfo.Tables[0].Rows[i][13].ToString() }, new { @class = "btn_fzx", target = "_blank", id = "btnOK" })%>
                            <%--<a href="<%=Url.Action("~/Refer/Consult}",PTCInfo.Tables[0].Rows[i][2].ToString()) %>" id="btnOK" class="btn_fzx" target="_blank">向她提问</a>--%>
                        </span>
                        <br class="clear" />
                        <span class="czyear">
                            <%
                            int nain =  Convert.ToInt32(System.DateTime.Now.Year) - Convert.ToInt32(PTCInfo.Tables[0].Rows[i][9].ToString());  
                            %>
                            <i>心理佳龄：<%=nain%>年</i>
                        </span>
                    </li>        

                    <%}%>
            
        </ul>
        <div class="drOnlineLevelInfo ">
            <p>
                <b>等级说明：</b>
                <br />
                <b>初级：</b>好评数0～299
                <br />
                <b>中级：</b>好评数300～699
                <br />
                <b>高级：</b>好评数700～999或开通高级推广者
                <br />
                <b>专家：</b>好评数1000及以上
                <br />
                好评计算规则：好评数=鲜花数&nbsp;-&nbsp;鸡蛋数
            </p>
        </div>
        <p class="more">
            <a href="javascript:void(0);">更多心理专家......</a>
        </p>
        <p class="pd"></p>
    </div>

    <div class="full bg2 pd">
        <div class="wrap pd">
            <p class="c-tit">
                长沙优秀心理咨询师
                <i class="city-server"></i>
            </p>
            <ul id="good-dr">
                <li class="wow fadeInUpBig animated">
                    <a href="javascript:void(0);" target="_blank" class="avatar">
                        <img src="<%=Url.Content("~/img/refer/69ac6985d4c740b2accdc47d69a6bd54.jpg")%>" alt="周艳玲" />
                    </a>
                    <span>
                        <a href="javascript:void(0);" target="_blank" class="un">周艳玲</a>
                        <b>
                            <i class="icons"></i>
                            <em>137-2385-0880</em>
                            <br class="clear" />
                        </b>
                    </span>
                    <br class="clear" />
                    <i class="tit">优秀心理咨询师</i>
                </li>
                <li class="wow fadeInUpBig animated" data-wow-delay="0.2s">
                    <a href="javascript:void(0);" target="_blank" class="avatar" onclick="cityindex.goodUrl(-1)">
                        <img src="<%=Url.Content("~/img/refer/avatar_large.gif")%>" alt="查看详情" />
                    </a>
                    <span>
                        <a href="javascript:void(0);" target="_blank" class="un" onclick="cityindex.goodUrl(-1)">诚征优秀心理咨询师</a>
                        <a href="javascript:void(0);" target="_blank" class="remark" onclick="cityindex.goodUrl(-1)">查看详情...</a>
                    </span>
                    <br class="clear" />
                    <a href="javascript:void(0);" target="_blank" class="tit2" onclick="cityindex.goodUrl(-1)">推广</a>
                </li>
            </ul>
            <br class="clear" />
        </div>
    </div>
</asp:Content>

<%--head引用--%>
<asp:Content ID="Content4" ContentPlaceHolderID="BeforeQuoteContent" runat="server">
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/CityStyle.css") %>">
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/css.css") %>">
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/animate.css") %>">
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/refer.css") %>" />
     <script type="text/javascript" src="<%=Url.Content("~/Scripts/City/jquery-1.11.3.min.js") %>"></script>
     <script  type="text/javascript" src="<%=Url.Content("~/Scripts/City/Popt.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/City/cityJson.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/City/citySet.js") %>"></script>

   
</asp:Content>

<%--footer脚本--%>

<asp:Content ID="Content5" ContentPlaceHolderID="ScriptContent" runat="server">
    <script>
        $(function () {
            $("#Refer").addClass("active");

            $(".c_btn").click(function (e) {
                SelCity(this, e);
                console.log("inout", $(this).val(), new Date())
            });
        });
    </script>
</asp:Content>