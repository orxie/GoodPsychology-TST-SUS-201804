<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/master.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<%@ Import Namespace="System.Data" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    心理测评-测评
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        $(function () {
            $("#Evaluation").addClass("active");
        });
    </script>
    <script type="text/javascript">
        function starTest() {
            $(".page-header").css({
                "display": "none"
            });
            $("#ceshi-page").css({
                "display": "none"
            });
            $("#Test").css({
                "display": "block"
            });


        }
        $(document).ready(function () {
            var result = 0;
            var result_message;
            var a = 0;
            var b = 0;
            var c = 0;
            var d = 0;
            var res_arr = [];

            $(".options ul li").click(function () {
                var node = $(this).parent().parent().parent();
                var next_node = $(node).next();

                var dataScore = $(this).attr("data-score");

                $(node).hide();

                if (parseInt(dataScore) > 100) {
                    $(".result-" + dataScore).show();
                    if (is_weixin()) {
                        $("#share2").hide();
                    } else {
                        $("#share1").hide();
                    }
                } else {
                    $(".question-" + dataScore).show();
                }
            });

            $(".prev a").click(function () {
                var node = $(this).parent().parent();
                var prev_node = $(node).prev();

                if (prev_node.hasClass("question")) {
                    $(node).hide();
                    $(prev_node).show();
                }
            });
        });
    </script>
    
    <style type="text/css">
        body {
            background: #000;
            background: url("wxbg.jpg") no-repeat;
            background-size: cover;
            margin: 0 auto;
            padding: 20px 10px;
            height: 100%;
            min-height: 500px;
        }

        a {
            text-decoration: none;
            color: #fff;
        }

        .title {
            margin: 0 auto;
            width: 80%;
        }

            .title h2 {
                background: #F2941B;
      
                padding: 10px 0;
                text-align: center;
                border-top-left-radius: 10px;
                border-top-right-radius: 10px;
                font-size: 20px;
                font-weight: normal;
                margin-bottom: 0;
            }

        .title-sub {
            padding: 10px 20px;

            text-align: left;
            /*border: 1px solid #b374b1;*/
            border-top: 0;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
            margin: 0 auto;
            background: rgba(231, 231, 231, 0.2) none repeat scroll 0 0 !important;
            background: #e7e7e7;
            filter: Alpha(opacity=20);
        }

        .question {
            width: 80%;
            margin: 0 auto;
            margin-top: 100px;
            display: none;
            margin-bottom:10px;
            background-color:#fff;
            border:1.5px solid transparent;
            border-radius:4px;
            -webkit-box-shadow:2px 2px 2px rgba(0,0,0,.1);
            box-shadow:2px 2px 2px rgba(0,0,0,.1);
        }

        .question-title {
            text-align: center;

        }

        .question:first-child, .question.current {
            display: block;
        }

        .result {
            display: none;
        }

        .options ul {
            padding: 0;
        }

        .options li {
            margin: 30px 0;
            padding: 5px 15px;
            list-style-type: none;
        }

            .options li div {
                padding-left: 20px;
            }

        .options.button li {
            border:1.5px solid #CB8A54;
            border-radius:4px;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            width: 100%;
            color: white;
            background: rgba(236, 147, 82, 0.6) none repeat scroll 0 0 !important;
            background: #8e63a7;
            filter: Alpha(opacity=60);
        }

        .options.button li {
            padding: 5px 0;
        }

        .options li.selected {
            background: #cf6271 !important;
        }

        .prev {
            margin-top: 30px;
            font-weight: 300;
            font-size: 12px;
            float: right;
            padding-bottom: 50px;
        }

            .prev a:link {
                color: #fff;
            }

        .tools-button {
            padding: 10px 0;
            color: #fff;
            text-align: center;
            margin: 0 auto;
            width: 80%;
            background: rgba(159, 66, 61, 0.3) none repeat scroll 0 0;
            background: #9f423d;
            filter: Alpha(opacity=30);
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            margin-top: 30px;
        }

        .share {
            background: rgba(49, 126, 172, 0.6) none repeat scroll 0 0;
            background: #317eac;
            filter: Alpha(opacity=60);
        }

        #tip {
            display: none;
            position: absolute;
            top: 10px;
            left: 10px;
        }

        .weixinimg {
            display: none;
        }

        #mask {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            display: none;
            background-color: #333;
            filter: alpha(Opacity=90);
            -moz-opacity: 0.9;
            opacity: 0.9;
        }
    </style>
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <% DataSet EvInfo = Session["EvaluationTCBY_ETCID"] as DataSet; %>
                <!--页头-->
                <div class="page-header">
                    <h2><%=EvInfo.Tables[0].Rows[0][0].ToString() %></h2>
                    <small>
                        <span><%=EvInfo.Tables[0].Rows[0][1].ToString() %></span>
                        <em>人测试过</em>
                    </small>
                </div>

                <div id="ceshi-page">
                    <!--描述-->
                    <div class="col-md-12">
                        <div class="thumbnail">
                            <img src=" <%=Url.Content(EvInfo.Tables[0].Rows[0][2].ToString()) %>" style="width: 100%; height: 100%;" />
                            <div class="caption">
                                <p class="message-indent"><%=EvInfo.Tables[0].Rows[0][3].ToString() %></p>
                            </div>
                        </div>
                    </div>

                    <!--测试提示-->
                    <div class="col-md-offset-1">
                        <ul class="list-group col-md-10">
                            <li class="list-group-item list-group-item-info text-center">测试注意</li>
                            <li class="list-group-item">题目数：
									<em class="pull-right">12</em>
                            </li>
                            <li class="list-group-item">预计用时
									<em class="pull-right">约4分钟</em>
                            </li>
                            <li class="list-group-item">价格
									<em class="pull-right" style="color: #00D313;">免费测试</em>
                            </li>
                            <li class="list-group-item">
                                <a href="javascript:void(0);" class="text-center button-start bg-primary csbtn" style="color: #fffff;" onclick="starTest()">开始测试</a>
                            </li>
                        </ul>
                    </div>
                </div>
                                  <div class="result result-100">
                        <div class="title">
                            <h2>结果
                            </h2>
                            <div class="title-sub aside">
                                A、恭喜您，您的心理状况非常健康，您能够应付生活中的许多事情，虽然有时也会有些烦恼，但您都可以从容的解决，您像风一样的自由，不被烦恼所束缚，请继续保持。
                            </div>
                        </div>
                    </div>
                    <div class="result result-200">
                        <div class="title">
                            <h2>结果
                            </h2>
                            <div class="title-sub aside">
                                B、您有轻度的心理压力，虽然常会体验到不必要的烦恼，但您基本能处理生活中的问题。您也会意识到烦恼无处不在，学会调节自己的心情才是正途，心理佳希望您能继续保持轻松愉快的心境。
                            </div>
                        </div>
                    </div>
                    <div class="result result-300">
                        <div class="title">
                            <h2>结果
                            </h2>
                            <div class="title-sub aside">
                                C、您的心理压力已经积累了不少，想必您是一个十分认真的人，事事追求完美，但也请记住人力也有不可为之的时候，心理佳医疗建议您调整好自己的心态，将会对您的身体健康大有裨益。
                            </div>
                        </div>
                    </div>

                    <div class="result result-400">
                        <div class="title">
                            <h2>结果
                            </h2>
                            <div class="title-sub aside">
                                D、您已经在承受巨大的心理压力，您不能处理生活中的许多问题，因此使您紧张、不安、影响到您的身心健康。您应尽快改变这种情况，否则将使您的生活不能正常进行。请记住，心理健康与身体健康是同样重要的，良好的心境才是保持身体健康的根本。如果您有任何需要，可以咨询相关心理医生，希望您可以尽快走出心理的阴霾，外面阳光正好。
                            </div>
                        </div>
                    </div>

                <!--测试-->
                <div id="Test" style="display: none;">
                    <div class="question question-1 current">
                        <div class="question-title list-group-item list-group-item-info text-center">
                            生日，婚礼等社交活动，免不了花钱。
                        </div>
                        <div class="options button ">
                            <ul>
                                <li data-score="3" >
                                    <div>
                                        A、你不想在这类场合出现，以免花钱买礼物; 
                                    </div>
                                </li>
                                <li data-score="2">
                                    <div>
                                        B、尽管不少花钱，可在各种场合，你还是乐于选择小巧而特别的礼物;
                                    </div>
                                </li>
                                <li data-score="3">
                                    <div>
                                        C、只在对你很重要的场合送礼;
                                    </div>
                                </li>
                            </ul>
                        </div>

                    </div>

                    <div class="question  question-2 ">
                        <div class="question-title list-group-item list-group-item-info text-center">
                            你的自行车与别人的车相撞，你不得不与对方约个时间解决这个问题。
                        </div>
                        <div class="options button">
                            <ul>
                                <li data-score="3">
                                    <div>
                                        A、这件事引起的焦虑和不安使你失眠;
                                    </div>
                                </li>


                                <li data-score="4">
                                    <div>
                                        B、这并非重要的事情，只是生活中发生的许多事情中的一件，你会在问题解决后，做点自己喜欢的事情，以便尽快忘掉那不愉快的事;
                                    </div>
                                </li>

                                <li data-score="4">
                                    <div>
                                        C、开始时你不去管它，只要在解决问题的那一天到来时再想办法应付它;
                                    </div>
                                </li>

                            </ul>
                        </div>

                    </div>

                    <div class="question  question-3 ">
                        <div class="question-title list-group-item list-group-item-info text-center">
                            你的家具或电器由于水管破裂被损坏了，而且发现你的财产保险不能完全弥补损失。
                        </div>
                        <div class="options button">
                            <ul>
                                <li data-score="5">
                                    <div>
                                        A、你很失望，痛苦地抱怨保险公司;
                                    </div>
                                </li>


                                <li data-score="4">
                                    <div>
                                        B、开始自己修复家具;
                                    </div>
                                </li>

                                <li data-score="5">
                                    <div>
                                        C、考虑撤销保险，并向有关事务机关投诉;
                                    </div>
                                </li>
                            </ul>
                        </div>

                    </div>

                    <div class="question   question-4 ">
                        <div class="question-title list-group-item list-group-item-info text-center">
                            你由于某件生活中的小事和邻居发生了争执，却没能解决任何问题。
                        </div>
                        <div class="options button">
                            <ul>
                                <li data-score="5">
                                    <div>
                                        A、回到家，你拼命喝酒，想轻松一下，忘掉这件事;
                                    </div>
                                </li>


                                <li data-score="7">
                                    <div>
                                        B、准备到对方单位告他;
                                    </div>
                                </li>

                                <li data-score="6">
                                    <div>
                                        C、通过散步或看一场电影来平息怒气;
                                    </div>
                                </li>


                            </ul>
                        </div>

                    </div>

                    <div class="question   question-5 ">
                        <div class="question-title list-group-item list-group-item-info text-center">
                            当今日常生活中的压力使你和你妻子(或丈夫)经常发生口角。
                        </div>
                        <div class="options button">
                            <ul>
                                <li data-score="6">
                                    <div>
                                        A、每当这个时候，你尽力放松自己，保持沉默，不去争执;
                                    </div>
                                </li>


                                <li data-score="6">
                                    <div>
                                        B、你和朋友谈论这事，使你的观点和感情得到理解;
                                    </div>
                                </li>

                                <li data-score="7">
                                    <div>
                                        C、寻求机会，心平气和地与自己的妻子(或丈夫)谈心，看如何摆脱由于日常生活压力而引起的争吵;
                                    </div>
                                </li>


                            </ul>
                        </div>

                    </div>

                    <div class="question   question-6 ">
                        <div class="question-title list-group-item list-group-item-info text-center">
                            一个你所爱的亲密朋友准备与别人结婚了，对你来说这是个巨大的不幸。
                        </div>
                        <div class="options button">
                            <ul>
                                <li data-score="7">
                                    <div>
                                        A、你逃避现实，使用自己相信这不可能发生，因此没必要担心，于是仍然乐观地抱希望;
                                    </div>
                                </li>


                                <li data-score="8">
                                    <div>
                                        B、决定不去担忧，因为还有时间去改变这个“事实”;
                                    </div>
                                </li>

                                <li data-score="8">
                                    <div>
                                        C、决定向你所爱的人提出你的观点，表明你的态度，严肃地向她(他)说明不该这样的理由;
                                    </div>
                                </li>
                            </ul>
                        </div>

                    </div>

                    <div class="question   question-7 ">
                        <div class="question-title list-group-item list-group-item-info text-center">
                            每个人都承受物价上涨所带来的心理上和生活上的压力，你更担心食品价格上涨。
                        </div>
                        <div class="options button">
                            <ul>
                                <li data-score="9">
                                    <div>
                                        A、尽管价格上涨，你仍拒绝改变饮食习惯，因此不得不花更多的钱;
                                    </div>
                                </li>
                                <li data-score="9">
                                    <div>
                                        B、每看到物价上涨，你怒气会大增，但不管怎么样还要买，甚至拼命抢购，担心还会再涨;
                                    </div>
                                </li>

                                <li data-score="8">
                                    <div>
                                        C、设法少花钱，制定出一个营养而又实惠的信食谱;
                                    </div>
                                </li>
                            </ul>
                        </div>

                    </div>

                    <div class="question   question-8 ">
                        <div class="question-title list-group-item list-group-item-info text-center">
                            终于有一天你的能力被人们认识并被赋予一项重要工作。
                        </div>
                        <div class="options button">
                            <ul>
                                <li data-score="9">
                                    <div>
                                        A、你考虑放弃这次机会，因为工作量太大;
                                    </div>
                                </li>


                                <li data-score="9">
                                    <div>
                                        B、你开始怀疑自己能否承担这个重任;
                                    </div>
                                </li>


                                <li data-score="10">
                                    <div>
                                        C、分析这项工作对你的要求，并为从事这一工作做各方面的准备;
                                    </div>
                                </li>
                            </ul>
                        </div>

                    </div>

                    <div class="question   question-9 ">
                        <div class="question-title list-group-item list-group-item-info text-center">
                            你猜想你的房租或一些其它的月支付会增加。 
                        </div>
                        <div class="options button">
                            <ul>
                                <li data-score="11">
                                    <div>
                                        A、每天急于收信，以便从朋友那里早点确认上涨的信息，只有没信时才有所放松;
                                    </div>
                                </li>


                                <li data-score="10">
                                    <div>
                                        B、决定不被这次涨价吓倒，你计划怎么样应付这种情况，如换房、采取节约措施等; 
                                    </div>
                                </li>


                                <li data-score="11">
                                    <div>
                                        C、你觉得每个人都处在同样的状态中，因此逃避现实，被动等待，认为自己总会应付得了; 
                                    </div>
                                </li>
                            </ul>
                        </div>

                    </div>

                    <div class="question   question-10 ">
                        <div class="question-title list-group-item list-group-item-info text-center">
                            你的一个非常亲近的人在一场事故中受了重伤，你从电话里得到了这个消息。
                        </div>
                        <div class="options button">
                            <ul>
                                <li data-score="200">
                                    <div>
                                        A、努力压抑自己的感情，因为你还要把这一消息告诉其它朋友和亲戚; 
                                    </div>
                                </li>


                                <li data-score="200">
                                    <div>
                                        B、你挂断电话，哭起来，让悲痛尽情发泄出来，使心里好受一些;
                                    </div>
                                </li>


                                <li data-score="11">
                                    <div>
                                        C、去医务室向医生要一些镇静剂，帮助你度过以后几小时;
                                    </div>
                                </li>
                            </ul>
                        </div>

                    </div>

                    <div class="question   question-11 ">
                        <div class="question-title list-group-item list-group-item-info text-center">
                            每个节假日，家里总为去探望双方的父母而发生激烈争吵。
                        </div>
                        <div class="options button">
                            <ul>
                                <li data-score="12">
                                    <div>
                                        A、你制定了一个严格的5年计划，要求在节假日轮流探望双方父母;
                                    </div>
                                </li>


                                <li data-score="300">
                                    <div>
                                        B、决定在重要的假期与自己最喜欢的家庭成员一起度过，而在不太重要的假期邀请其他人;
                                    </div>
                                </li>


                                <li data-score="400">
                                    <div>
                                        C、决定做最“公平”的事，根本不与家里老人、亲戚一起度假，这样麻烦最少;
                                    </div>
                                </li>
                            </ul>
                        </div>

                    </div>

                    <div class="question   question-12 ">
                        <div class="question-title list-group-item list-group-item-info text-center">
                            有一天你突然感觉不舒服。
                        </div>
                        <div class="options button">
                            <ul>
                                <li data-score="300">
                                    <div>
                                        A、读一些有庆医学的书，进行自我诊断，自我治疗;
                                    </div>
                                </li>
                                <li data-score="200">
                                    <div>
                                        B、鼓起勇气，告诉家里人，并去医院看病，希望得到医生帮助;
                                    </div>
                                </li>
                                <li data-score="400">
                                    <div>
                                        C、拖着不去看病，认为自己最终会好起来;
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
            </div>

        </div>

        <div class="col-md-4 visible-lg" style="border: 1px solid #eee; margin-top: 20px; background-color: #ddd;">
            <div class="page-header">
                <h4>相关测试题</h4>
            </div>
            <!--测试推荐-->
            <% DataSet set2 = Session["sp_EvaluationTCBy_EID"] as DataSet; %>
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
                            <a href="#">
                                <div class="media recommend-img">
                                    <div class="media-left">
                                        <!--<a href="#">-->
                                        <img class="media-object img-circle" src="<%=Url.Content(set3.Tables[0].Rows[i][2].ToString())%>" alt="<%=set3.Tables[0].Rows[i][0].ToString() %>" />
                                        <!--</a>-->
                                    </div>
                                    <div class="media-body">
                                        <h4 class="Name-Mtop"><%=set3.Tables[0].Rows[i][0].ToString() %></h4>
                                        <em><%=set3.Tables[0].Rows[i][1].ToString() %></em>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <%}%>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    </div>


</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="QuoteContent" runat="server">
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/view.css") %>" />
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/secondEvaluation.css") %>" />
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="ScriptContent" runat="server">
    <script type="text/javascript" src="<%=Url.Content("~/js/js.js")%>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/js/view.js")%>"></script>
    <script src="<%=Url.Content("~/js/hm.js")%>"></script>
    <script src="<%=Url.Content("~/js/jquery.autosize-min.js")%>"></script>
    <script src="<%=Url.Content("~/js/verifycode.js")%>"></script>
    <script src="<%=Url.Content("~/js/comment.js")%>"></script>
    <script src="<%=Url.Content("~/js/favorites.js")%>"></script>
    <script src="<%=Url.Content("~/js/view.js")%>"></script>

    <script>
        $(function () {
            $("#Evaluation").addClass("active");
        });
    </script>
</asp:Content>
