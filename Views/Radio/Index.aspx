<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>减压电台</title>

    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/radio.css") %>" />
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/bootstrap.css") %>" />
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/bootstrap.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/jquery-1.10.2.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/jquery-ui.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/canvas.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/mousewheel.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/scroll.js") %>"></script>
    <script type="text/javascript" src="<%=Url.Content("~/Scripts/xiami.js") %>"></script>

    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/common.css") %>" />
    <link rel="stylesheet" type="text/css" href="<%=Url.Content("~/Content/message.css")%>" />
    <script>
        $(function () {
            $("#Radio").addClass("active");
        });
    </script>
</head>
<body class="BodyColor">
    <nav class="bgColor bg-primary visible-md visible-lg" role="navigation">
        <div class="container">
            <div class="rows bgColor">
                <!-- 左侧导航 -->
                <ul class="nav navbar-nav self-color-w">
                    <li>
                        <a href="javascript:void(0);">
                            <span class="glyphicon glyphicon-th" aria-hidden="true"></span>导航
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                            <span class="glyphicon glyphicon-phone" aria-hidden="true"></span>手机版
                        </a>
                    </li>
                </ul>
                <!-- 右侧导航 -->
                <ul class="nav navbar-nav navbar-right self-color-w">
                    <li>
                        <a href="<%=Url.Content("~/Login/Index") %>">
                            <span class="glyphicon glyphicon-user" aria-hidden="true"></span><%=Session["CurrentUser"]!=null?Session["CurrentUser"].ToString():"登录" %>
                        </a>
                    </li>
                    <!-- 注册 -->
                    <li>
                        <a href="<%=Url.Content("~/Signup/Index") %>">
                            <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>注册
                        </a>
                    </li>
                </ul>
                <!-- 搜索框 -->
                <div class="navbar-form navbar-right form-inline center-block">
                    <div class="input-group">
                        <!-- 输入框 -->
                        <input type="text" class="form-control" placeholder="请输入搜索内容">
                        <!-- 按钮 -->
                        <span class="input-group-btn">
                            <button type="submit" class="btn btn-info">
                                <span class="glyphicon glyphicon-search"></span>
                            </button>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <div class="nav-bg" style="border-bottom: 1px solid #eee;">
        <div class="container">
            <div class="navbar-header nav-title hidden-md hidden-lg">
                <button type="button" class="navbar-toggle collapsed nav-button-bgcolor" data-toggle="collapse" data-target="#nav-all" aria-expanded="false">
                    <span class="sr-only">导航</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="javascript:void(0);" class="navbar-brand nav-brand-color">心理佳</a>
            </div>
            <div class="row collapse navbar-collapse" id="nav-all">
                <div class="navbar-left hidden-sm hidden-xs" style="padding: 20px 0;">
                    <img src="<%=Url.Content("~/img/logo.gif") %>" style="width: 267px; height: 67px" alt="logo">
                </div>

                <nav class="navbar-right self-margin">
                    <ul class="nav navbar-nav self-color-b">
                        <li role="presentation" id="Home">
                            <a href="<%=Url.Content("~/Home/Index") %>">首页</a>
                        </li>
                        <li role="presentation" id="Evaluation">
                            <a href="<%=Url.Content("~/Evaluation/Index") %>">心理测评</a>
                        </li>
                        <li role="presentation" id="Refer">
                            <a href="<%=Url.Content("~/Refer/Index") %>">心理咨询</a>
                        </li>
                        <li role="presentation" id="Message">
                            <a href="<%=Url.Content("~/Message/Index") %>">好文推送</a>
                        </li>
                        <li role="presentation" id="Radio">
                            <a href="<%=Url.Content("~/Radio/Index") %>">减压电台</a>
                        </li>
                        <li role="presentation" id="Course">
                            <a href="<%=Url.Content("~/Course/Index") %>">心路历程</a>
                        </li>
                        <li role="presentation" id="Video">
                            <a href="<%=Url.Content("~/Video/Index") %>">在线视频</a>
                        </li>
                    </ul>
                </nav>


            </div>
        </div>
    </div>


    <!-- 内容-->

    <div class="rabody">
        <div class="playerMain">
            <div class="middle">
                <div class="mainWrap">
                    <div class="leftBar">
                        <ul class="menuUL">
                            <li class="menuLi cur">
                                <a href="<%=Url.Content("#") %>">
                                    <i class="icon iplay"></i>正在播放
                                </a>
                            </li>
                            <li class="menuLi">
                                <a href="<%=Url.Content("#") %>">
                                    <i class="icon ihst"></i>播放历史
                                </a>
                            </li>
                            <li class="menuLi">
                                <a href="<%=Url.Content("#") %>">
                                    <i class="icon ishouc"></i>我收藏的单曲
                                </a>
                            </li>
                        </ul>
                        <div class="collectOut">
                            <span class="colS">我创建的精选集</span>
                            <a href="<%=Url.Content("#") %>" class="colA"></a>
                        </div>
                        <div class="cellectList"></div>
                        <audio id="audio" src="<%=Url.Content("~/songs/1.mp3") %>"></audio>
                    </div>
                    <div class="mainBody">
                        <div class="playHd">
                            <div class="phInner">
                                <div class="col">歌曲(8)</div>
                                <div class="col">演唱者</div>
                                <div class="col">专辑</div>
                            </div>
                        </div>
                        <div class="playBd">
                            <div class="scrollView">
                                <!-- <div class="scroll"></div> -->
                                <ul class="songUL">
                                    <li class="songList">
                                        <div class="songLMain">
                                            <div class="check">
                                                <input class="checkIn" type="checkbox" select="0" />
                                            </div>
                                            <div class="start">
                                                <em sonn="1">1</em>
                                            </div>
                                            <div class="songBd">
                                                <div class="col colsn">Tears</div>
                                                <div class="col colcn">The&nbsp;Daydream</div>
                                                <div class="col">Dreaming</div>
                                            </div>
                                            <div class="control">
                                                <a class="cicon love"></a>
                                                <a class="cicon more" style="display: none"></a>
                                                <a class="cicon dele" style="display: none"></a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="songList">
                                        <div class="songLmain">
                                            <div class="check">
                                                <input class="checkIn" type="checkbox" select="0">
                                            </div>
                                            <div class="start">
                                                <em sonn="2">2</em>
                                            </div>
                                            <div class="songBd">
                                                <div class="col colsn">Exodus</div>
                                                <div class="col colcn">Maksim</div>
                                                <div class="col">Exodus</div>
                                            </div>
                                            <div class="control">
                                                <a class="cicon love"></a>
                                                <a class="cicon more"></a>
                                                <a class="cicon dele"></a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="songList">
                                        <div class="songLmain">
                                            <div class="check">
                                                <input class="checkIn" type="checkbox" select="0" />
                                            </div>
                                            <div class="start">
                                                <em sonn="3">3</em>
                                            </div>
                                            <div class="songBd">
                                                <div class="col colsn">Handel's&nbsp;Sarabande</div>
                                                <div class="col colcn">Maksim</div>
                                                <div class="col">Maksim</div>
                                            </div>
                                            <div class="control">
                                                <a class="cicon love"></a>
                                                <a class="cicon more"></a>
                                                <a class="cicon dele"></a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="songList">
                                        <div class="songLmain">
                                            <div class="check">
                                                <input class="checkIn" type="checkbox" select="0" />
                                            </div>
                                            <div class="start">
                                                <em sonn="4">4</em>
                                            </div>
                                            <div class="songBd">
                                                <div class="col colsn">Dreaming</div>
                                                <div class="col colcn">The Daydream </div>
                                                <div class="col">Halo Legends: Original Soundtrack</div>
                                            </div>
                                            <div class="control">
                                                <a class="cicon love"></a>
                                                <a class="cicon more"></a>
                                                <a class="cicon dele"></a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="songList">
                                        <div class="songLmain">
                                            <div class="check">
                                                <input class="checkIn" type="checkbox" select="0">
                                            </div>
                                            <div class="start">
                                                <em sonn="5">5</em>
                                            </div>
                                            <div class="songBd">
                                                <div class="col colsn">Exodus</div>
                                                <div class="col colcn">Maksim </div>
                                                <div class="col">S.E.N.S</div>
                                            </div>
                                            <div class="control">
                                                <a class="cicon love"></a>
                                                <a class="cicon more"></a>
                                                <a class="cicon dele"></a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="songList">
                                        <div class="songLmain">
                                            <div class="check">
                                                <input class="checkIn" type="checkbox" select="0">
                                            </div>
                                            <div class="start">
                                                <em sonn="6">6</em>
                                            </div>
                                            <div class="songBd">
                                                <div class="col colsn">The Butterfly Lovers Violin Concerto</div>
                                                <div class="col colcn">Nishizaki Takako (西崎崇子) / Shanghai Conservatory Symphony Orchestra / Cheng-wu Fan (樊承武) </div>
                                                <div class="col">Future Soundscape I</div>
                                            </div>
                                            <div class="control">
                                                <a class="cicon love"></a>
                                                <a class="cicon more"></a>
                                                <a class="cicon dele"></a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="songList">
                                        <div class="songLmain">
                                            <div class="check">
                                                <input class="checkIn" type="checkbox" select="0">
                                            </div>
                                            <div class="start">
                                                <em sonn="7">7</em>
                                            </div>
                                            <div class="songBd">
                                                <div class="col colsn">The children</div>
                                                <div class="col colcn">Ramin Djawadi</div>
                                                <div class="col">《权力的游戏第四季》</div>
                                            </div>
                                            <div class="control">
                                                <a class="cicon love"></a>
                                                <a class="cicon more"></a>
                                                <a class="cicon dele"></a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="songList">
                                        <div class="songLmain">
                                            <div class="check">
                                                <input class="checkIn" type="checkbox" select="0">
                                            </div>
                                            <div class="start">
                                                <em sonn="8">8</em>
                                            </div>
                                            <div class="songBd">
                                                <div class="col colsn">Pachelbel: Canon & Gigue, etc.</div>
                                                <div class="col colcn">The English Concert / Trevor Pinnock </div>
                                                <div class="col">《环太平洋》</div>
                                            </div>
                                            <div class="control">
                                                <a class="cicon love"></a>
                                                <a class="cicon more"></a>
                                                <a class="cicon dele"></a>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="songList"></li>
                                </ul>
                            </div>
                        </div>
                        <div class="playFt">
                            <div class="track">
                                <div class="uiCheck">
                                    <input class="checkAll" type="checkbox" select="0">
                                </div>
                                <div class="uiItem">
                                    <a href="<%=Url.Content("#") %>" class="itIcon itDele">删除</a>
                                </div>
                                <div class="uiItem">
                                    <a href="<%=Url.Content("#") %>" class="itIcon itShou">收藏</a>
                                </div>
                                <div class="uiItem">
                                    <a href="<%=Url.Content("#") %>" class="itIcon itJin">添加到精选集</a>
                                </div>
                                <div class="uiItem">
                                    <a href="<%=Url.Content("#") %>" class="itIcon itMore">更多</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mainOuther">
                        <div class="albumCover">
                            <a href="<%=Url.Content("#") %>">
                                <img src="<%=Url.Content("/img/radio/2.jpg") %>" id="canvas1">
                            </a>
                        </div>
                      <%--  <div class="albumSale">
                            <a href="<%=Url.Content("#") %>" class="asA">
                                <img src="<%=Url.Content("#") %>">
                            </a>
                        </div>--%>
                        <div id="lyr"></div>
                    </div>
                </div>
            </div>
            <div class="bottom">
                <div class="playerWrap">
                    <div class="playerCon">
                        <a href="<%=Url.Content("#") %>" class="pbtn prevBtn"></a>
                        <a href="<%=Url.Content("#") %>" class="pbtn playBtn" isplay="1"></a>
                        <a href="<%=Url.Content("#") %>" class="pbtn nextBtn"></a>
                        <a href="<%=Url.Content("#") %>" class="mode"></a>
                    </div>
                    <div class="playInfo">
                        <div class="trackInfo">
                            <a class="songName">漂洋过海来看你(Live)</a>
                            -
								<a class="songPlayer">刘明湘</a>
                            <div class="trackCon">
                                <a href="<%=Url.Content("#") %>" class="tc1"></a>
                                <a href="<%=Url.Content("#") %>" class="tc2"></a>
                                <a href="<%=Url.Content("#") %>" class="tc3"></a>
                            </div>
                        </div>
                        <div class="playerLength">
                            <div class="position">00:00</div>
                            <div class="progress1">
                                <div class="pro1"></div>
                                <div class="pro2">
                                    <a href="<%=Url.Content("#") %>" class="dian"></a>
                                </div>
                            </div>
                            <div class="duration">03:35</div>
                        </div>
                    </div>
                    <div class="vol">
                        <a href="<%=Url.Content("#") %>#" class="pinBtn"></a>
                        <div class="volm">
                            <div class="volSpeaker"></div>
                            <div class="volControl">
                                <a href="<%=Url.Content("#") %>#" class="dian2"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
