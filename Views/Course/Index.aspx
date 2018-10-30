<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/master.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    心路历程
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        $(function () {
            $("#Course").addClass("active");
        });
    </script>
    <div class="main clearfix">
        <div style="margin-bottom: 10px;">
            <!-- 页顶广告 -->
            <ins data-revive-zoneid="153" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57"></ins>
        </div>


        <div class="persion_section">

            <div class="common_con clearfix" id="album_detail_wrap">
                <div class="questions_tab_con">

                    <div class="sort">
                        <div class="sort_list_label">
                            按热度排序
                            <i class="icon-caret-down"></i>
                        </div>
                        <ul>
                            <a href="javascript:void(0)">
                                <li>热度</li>
                            </a>
                            <a href="javascript:void(0)">
                                <li>回答数</li>
                            </a>

                            <li class="arrow"></li>
                        </ul>
                    </div>

                </div>
                   <% System.Data.DataSet BoardInfo = Session["BoardInfo"] as System.Data.DataSet;
                         
                           %>
                    <%for (int i = 0; i < BoardInfo.Tables[0].Rows.Count; i++)
			        {
			        %>
                         <div class="questions_detail_con">
                    <div class="q_time">
                        <span><%=Url.Content(BoardInfo.Tables[0].Rows[i][0].ToString()) %>来自</span>

                        <a class="user_name" href="javascript:void(0)" target="_blank"><%=Url.Content(BoardInfo.Tables[0].Rows[i][1].ToString()) %></a>


                        <b>
                            <a href="javascript:;" title="个人悬赏"></a>
                        </b>
                    </div>
                    <dl>
                        <dt>
                            <a href="<%=Url.Content("~/Course/QandA") %>"" target="_blank"><%=Url.Content(BoardInfo.Tables[0].Rows[i][2].ToString()) %></a>
                        </dt>
                        <dd>本案例由心理咨询师<%=Url.Content(BoardInfo.Tables[0].Rows[i][4].ToString()) %>中提供解答
                        </dd> 
                    </dl>
                    <div class="tags">

                      <%--  <a href="javascript:void(0)" target="_blank">抑郁</a>--%>

                    </div>
                    <a class="answer_num " title="暂无满意答案" target="_blank" href="javascript:void(0)">
                        <span>0</span>
                        <p>回答</p>
                    </a>

                </div>
                <div class="share_bar_con">
                    <span class="interval">|</span>
                    <em class="browse">浏览<%=Url.Content(BoardInfo.Tables[0].Rows[i][3].ToString()) %></em>
                </div>
                    <%}%>
            </div>

        </div>
        <div class="persion_article">

            <div class="mod_about_teacher">
                <h3>最新公告</h3>
                <div class="answer_list">
                    <ul>
                        <li>
                            <span></span>
                            <a href="javascript:void(0)" target="_blank">感觉和别人相处起来心里压力很大</a>
                        </li>
                        <li>
                            <span></span>
                            <a href="javascript:void(0)" target="_blank">职业发展中的常见问题</a>
                        </li>
                        <li>
                            <span></span>
                            <a href="javascript:void(0)" target="_blank">提问的艺术</a>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="mod_answer_ing">
                <div class="mod_answer">
                    <h3>
                        <a href="javascript:void(0)" target="_blank">导师推荐</a>
                        <a href="javascript:void(0)" class="apply_teacher" target="_blank">申请成为导师</a>
                    </h3>
                    <div class="mod_dl_box mod_dl_box01">
                        <div class="scrollcontent">
                            <dl class="info_box info_box_choose clearfix">
                                <dd class="mod_dl_dd">
                                    <a target="_blank" href="javascript:void(0)">caozhy</a>
                                    <input type="hidden" value="caozhy">
                                    <span>推荐了：</span>
                                    <a class="mod_dl_a" href="javascript:void(0)" target="_blank">开心一刻</a>
                                </dd>
                            </dl>
                            <dl class="info_box info_box_choose clearfix">
                                <dd class="mod_dl_dd">
                                    <a target="_blank" href="javascript:void(0)">caozhy</a>
                                    <input type="hidden" value="caozhy">
                                    <span>推荐了：</span>
                                    <a class="mod_dl_a" href="javascript:void(0)" target="_blank">怎样可以缓解焦虑的情绪</a>
                                </dd>
                            </dl>
                            <dl class="info_box info_box_choose clearfix">
                                <dd class="mod_dl_dd">
                                    <a target="_blank" href="javascript:void(0)">showbo</a>
                                    <input type="hidden" value="showbo">
                                    <span>推荐了：</span>
                                    <a class="mod_dl_a" href="javascript:void(0)" target="_blank">我今年不去高考明年能考吗</a>
                                </dd>
                            </dl>
                            <dl class="info_box info_box_choose clearfix">
                                <dd class="mod_dl_dd">
                                    <a target="_blank" href="javascript:void(0)">caozhy</a>
                                    <input type="hidden" value="caozhy">
                                    <span>推荐了：</span>
                                    <a class="mod_dl_a" href="javascript:void(0)" target="_blank">和好朋友闹别扭</a>
                                </dd>
                            </dl>
                            <dl class="info_box info_box_choose clearfix">
                                <dd class="mod_dl_dd">
                                    <a target="_blank" href="javascript:void(0)">caozhy</a>
                                    <input type="hidden" value="caozhy">
                                    <span>推荐了：</span>
                                    <a class="mod_dl_a" href="javascript:void(0)" target="_blank">心理的问题</a>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>
         <%--   <div class="mod_answer_ing">
                <div class="mod_answer">
                    <h3>最新回答</h3>
                    <div id="scrolldiv" class="mod_dl_box">
                        <div class="scrollcontent">
                            <dl class="info_box clearfix">
                                <dt>

                                    <a href="javascript:void(0)" target="_blank">
                                        <img alt="2 oyljerry" class="img csdn-avatar50" src="<%=Url.Content("~/img/userinfo/")%>2_oyljerry.jpg" title="oyljerry" username="oyljerry" />
                                    </a>

                                </dt>
                                <dd class="mod_dl_dd_01">
                                    <a class="user_name" href="javascript:void(0)" target="_blank">oyljerry</a>
                                    <span>回答了：</span>
                                    <a class="mod_dl_a" href="javascript:void(0)" target="_blank">现在很迷茫</a>
                                </dd>
                            </dl>
                            <dl class="info_box clearfix">
                                <dt>

                                    <a href="javascript:void(0)" target="_blank">
                                        <img alt="2 xiaolu1014" class="img csdn-avatar50" src="<%=Url.Content("~/img/userinfo/2_pwj596819850.jpg")%>" title="xiaolu1014" username="xiaolu1014" />
                                    </a>

                                </dt>
                                <dd class="mod_dl_dd_01">
                                    <a class="user_name" href="javascript:void(0)" target="_blank">xiaolu1014</a>
                                    <span>回答了：</span>
                                    <a class="mod_dl_a" href="javascript:void(0)" target="_blank">抑郁症离婚 </a>
                                </dd>
                            </dl>

                        </div>
                    </div>
                </div>
            </div>--%>
            <div class="mod_technology_hot_person">
                <div class="technology_hot_person">
                    <div class="technology_hot">
                        <h3>
                            <a href="/experts" target="_blank" class="hot_p">热心人</a>
                        </h3>
                    </div>
                    <dl class="img_text_list clearfix">
                        <div class="img">
                            <a href="javascript:void(0)" target="_blank">
                                <img alt="2 z979451341" class="csdn-avatar50" src="<%=Url.Content("~/img/userinfo/2_z979451341.jpg")%>" title="z979451341" username="z979451341" />
                            </a>
                        </div>
                        <dt>
                            <a class="user_name" href="javascript:void(0)" target="_blank">z979451341</a>
                        </dt>
                        <dd class="hot_person_d">每天熬夜到天亮 一个人会哭
                            <!--<a nodeType="aConcern" nodeUser=""  href="javascript:;" class="focus_btn"><span><i class="icon-plus"></i>关注</span><strong>已关注</strong><b>取消</b></a>-->
                        </dd>
                    </dl>
                    <dl class="img_text_list clearfix">
                        <div class="img">
                            <a href="javascript:void(0)" target="_blank">
                                <img alt="2 stone you" class="csdn-avatar50" src="<%=Url.Content("~/img/userinfo/2_z979451341.jpg")%>" title="stone_you" username="stone_you" />
                            </a>
                        </div>
                        <dt>
                            <a class="user_name" href="javascript:void(0)" target="_blank">stone_you</a>
                        </dt>
                        <dd class="hot_person_d">失恋的困扰

                            <!--<a nodeType="aConcern" nodeUser=""  href="javascript:;" class="focus_btn"><span><i class="icon-plus"></i>关注</span><strong>已关注</strong><b>取消</b></a>-->
                        </dd>
                    </dl>
                    <dl class="img_text_list clearfix">
                        <div class="img">
                            <a href="javascript:void(0)" target="_blank">
                                <img alt="2 u011012932" class="csdn-avatar50" src="<%=Url.Content("~/img/userinfo/2_u011012932.jpg")%>" title="u011012932" username="u011012932" />
                            </a>
                        </div>
                        <dt>
                            <a class="user_name" href="javascript:void(0)" target="_blank">u011012932</a>
                        </dt>
                        <dd class="hot_person_d">感觉和别人相处起来心里压力很大
                            <!--<a nodeType="aConcern" nodeUser=""  href="javascript:;" class="focus_btn"><span><i class="icon-plus"></i>关注</span><strong>已关注</strong><b>取消</b></a>-->
                        </dd>
                    </dl>
                    <dl class="img_text_list clearfix">
                        <div class="img">
                            <a href="javascript:void(0)" target="_blank">
                                <img alt="2 avenccssddnn" class="csdn-avatar50" src="<%=Url.Content("~/img/userinfo/2_avenccssddnn.jpg")%>" title="avenccssddnn" username="avenccssddnn" />
                            </a>
                        </div>
                        <dt>
                            <a class="user_name" href="javascript:void(0)" target="_blank">avenccssddnn</a>
                        </dt>
                        <dd class="hot_person_d">总觉得身体不舒服服
                            <!--<a nodeType="aConcern" nodeUser=""  href="javascript:;" class="focus_btn"><span><i class="icon-plus"></i>关注</span><strong>已关注</strong><b>取消</b></a>-->
                        </dd>
                    </dl>

                    <div class="info_box">
                        <div class="info_text">欢迎热心人解答问题，帮助其他朋友</div>
                        <div class="info_btn">
                            <a class="btn btn-primary btn-lg btn-block" href="javascript:void(0)">申请成为热心人</a>
                        </div>
                        <div class="info_info">
                            <a href="/help#rule31">关于问答热心人</a>
                        </div>
                    </div>
                </div>
            </div>
         
            <script type="text/javascript">
                function showConcern() {
                    var loginname = "";

                    $("[nodeType=aConcern]").each(function (i, item) {

                        var now_item_name = $(item).attr("nodeUser");
                        if (loginname) {
                            var btn_state = '';
                            var check_follow_url = 'http://my.csdn.net/index.php/follow/check_is_followed/' +
                                loginname + '/' + now_item_name + '?jsonpcallback=?';
                            $.ajax({
                                type: "get",
                                url: check_follow_url,
                                dataType: "jsonp",
                                success: function (data) {

                                    if (data.msg == 'failed') {
                                        btn_state = 1;
                                    } else {
                                        btn_state = 2;
                                    }

                                    if (btn_state == 2) {
                                        //$(item).html('已关注');
                                        $(item).addClass('focus_cancel');
                                        //$(item).css({'background-color':'#c7c7c7'});
                                        //$(item)[0].onmouseover = function()
                                        //{
                                        //$(item).html('取&nbsp;&nbsp;&nbsp;消');
                                        //$(item).css({'background-color':'#9e9e9e'});
                                        //}
                                        //$(item)[0].onmouseout = function()
                                        //{
                                        //$(item).html('已关注');
                                        //$(item).css({'background-color':'#c7c7c7'});
                                        //}
                                    }

                                    $(item)[0].onclick = function () {
                                        if (btn_state == 1) {
                                            //现在要去关注别人
                                            btn_state = 0;
                                            var do_follow_url =
                                                'http://my.csdn.net/index.php/follow/do_follow?username=' +
                                                now_item_name + '&jsonpcallback=?';
                                            $.ajax({
                                                type: "get",
                                                url: do_follow_url,
                                                dataType: "jsonp",
                                                success: function (data) {
                                                    if (parseInt(data.succ) == 1) {
                                                        $(item).removeClass(
                                                            'focus_cancel');
                                                        $(item).addClass(
                                                            'focus_cancel');
                                                        /*$(item).html('已关注');
                                                        $(item).css({'background-color':'#c7c7c7'});
                                                        $(item)[0].onmouseover = function()
                                                        {
                                                          $(item).html('取&nbsp;&nbsp;&nbsp;消');
                                                          $(item).css({'background-color':'#9e9e9e'});
                                                        }
                                                        $(item)[0].onmouseout = function()
                                                        {
                                                          $(item).html('已关注');
                                                          $(item).css({'background-color':'#c7c7c7'});
                                                        }*/
                                                    }
                                                    btn_state = 2;
                                                }
                                            });
                                        } else if (btn_state == 2) {
                                            btn_state = 0;
                                            //现在要去取消关注
                                            do_unfollow_url =
                                                'http://my.csdn.net/index.php/follow/do_unfollow?username=' +
                                                now_item_name + '&jsonpcallback=?';
                                            $.ajax({
                                                type: "get",
                                                url: do_unfollow_url,
                                                dataType: "jsonp",
                                                success: function (data) {
                                                    if (parseInt(data.succ) == 1) {
                                                        $(item).removeClass(
                                                            'focus_cancel');
                                                        //$(item).html('<i class="icon-plus">'+'</i>'+' 关注');
                                                        //$(item).removeAttr("style");
                                                        //$(item)[0].onmouseover = null;
                                                        //$(item)[0].onmouseout = null;
                                                    }
                                                    btn_state = 1;
                                                }

                                            });
                                        }
                                    }
                                }
                            });
                        } else {
                            $(item)[0].onclick = function () {
                                window.location.href = "javascript:void(0)";
                            }
                        }
                    });
                }
                showConcern();
            </script>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="BeforeQuoteContent" runat="server">
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/oneplus.css") %>" />
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/animate.css") %>" />
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/layout.css") %>" />
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/magnific-popup.css") %>" />
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/ask_index_A-e5Cd8b7e5819e8c9c321d5a2b4b8afca.css") %>" />

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptContent" runat="server">
    
    <script>
        $(function () {
            $("#Course").addClass("active");
        });
    </script>

    <script>
        $(function () {
            var not_loading = true,
                pageNum = 3,
                oList = $("#album_detail_wrap");
            $(window).scroll(function () {
                var scrollTop = $(this).scrollTop();
                var scrollHeight = $(document).height();
                var windowHeight = $(this).height();
                if (scrollTop + windowHeight >= scrollHeight) {
                    if (not_loading) {
                        refreshMore();
                        setTimeout(function () {
                            getMore();
                        }, 100);
                    } else {
                        $(".dl_more").remove();
                    }
                }
            });

            function getMore() {
                //console.log("getMore......")
                $.ajax({
                    type: 'get',
                    url: '/questions/ajax_get_questions',
                    data: {
                        sort_by: '',
                        page: pageNum
                    },
                    //async: false,
                    dataType: 'json',
                    success: function (resobj) {
                        var totalNum = resobj.total_pages;
                        if (pageNum <= totalNum) {
                            $(".dl_more").remove();
                            oList.append(resobj.oHtml);
                            refreshMore();
                            not_loading = true;
                            pageNum++;
                        } else {
                            not_loading = false;
                            noMore();
                        }
                    },
                    error: function (err) {
                        console.log(err);
                    }
                });
            }

            function noMore() {
                $(".dl_more").remove();
                if (oList.find(".dl_no_more").length == 0) {
                    oList.append(
                        '<div class="dl_no_more" style="font-size:14px; color:red; text-align:center;padding-top:10px; ">我们是很有底线的</div>'
                    );
                }
            }

            function refreshMore() {
                if (oList.find(".dl_more").length == 0) {
                    oList.append(
                        '<div class="dl_more" style="font-size:14px; color:red; text-align:center;padding-top:10px;"></div>'
                    );
                }
            }
        });
    </script>
</asp:Content>
