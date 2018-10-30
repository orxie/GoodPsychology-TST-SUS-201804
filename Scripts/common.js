$(function() {

	var navLi = $('.nav li');
	navLi.on('mouseenter',function(){
		$(this).find(".nav_list").slideDown(400);
		$(this).find(".tit_hover").attr("style","color:#FFF!important;");//*************
	});
	navLi.on('mouseleave',function(){
		$(this).find(".nav_list").slideUp(400);
		$(this).find(".tit_hover").attr("style","color:#000!important;");//*************
	})
	$(".midTit").on('mouseenter',function(){
		$(".midActive").slideDown(400);
	});
	
	$(".midActive").on('mouseleave',function(){
		$(this).slideUp(400);
	})
    var tim = null;
    $(".ym_nav .nav_ico").mouseenter(function() {
        var obj = $(this);
        tim = setTimeout(function() {
            $(obj).find('img').animate({
                left: '-23px',
                top: '-13px',
                width: '182px',
                height: '182px'
            },
            200);

        },
        200);
    });
    $(".ym_nav .nav_ico").mouseleave(function() {
        clearTimeout(tim);
        var obj = $(this);
        $(obj).find("img").animate({
            left: '0px',
            top: '0px',
            width: '172px',
            height: '172px'
        },
        200);
    });
    
    //
    
    $('.wytw-sexs').delegate('label','click',function(){
		$('.wytw-sexs').find('label').removeClass('selec');
		$(this).addClass('selec');
		$(this).find('input').prop("checked",true);
	});
    
    /*头部搜索框有值时，隐藏place holder*/
    if($("#search_keyword").val()){
    	$("label[for='search_keyword']").hide();
    };


    /*搜索标签切换*/
    $('.search_box_con>ul>li ').click(function(){
        $(this).addClass('hover').siblings().removeClass();
        var cat =  $(this).attr('cat');
        if (cat=='media') {
        	if($('.search_text').val()=="请输入您要查找的店铺名称"){
        		$('.search_text').val('请输入您要查找的媒体名称，如: 北京  王府井  LED ');
        	}
            $('.search_text').attr('placeholder','请输入您要查找的媒体名称，如: 北京  王府井  LED ');
        }else if(cat=='shop'){
        	if($('.search_text').val()=="请输入您要查找的媒体名称，如: 北京  王府井  LED "){
        		$('.search_text').val('请输入您要查找的店铺名称');
        	}
            $('.search_text').attr('placeholder','请输入您要查找的店铺名称');
        }
    });
    
    /*搜索框获取、失去焦点事件*/
    $('.search_text').focus(function(){
        if($('.search_text').val().length==0){
            $('.search_text').attr('placeholder','');
        }
    })
    .blur(function(){
        if ($('.search_text').val().length!=0)
            return false;
        var cat =  $('.hover').attr('cat');
        if (cat=='media') {
            $('.search_text').attr('placeholder','请输入您要查找的媒体名称，如: 北京  王府井  LED ');
        }else if(cat=='shop'){
            $('.search_text').attr('placeholder','请输入您要查找的店铺名称');
        }
    });    

});


$(function(){
	if(!placeholderSupport()){   // 判断浏览器是否支持 place holder
	    $('[placeholder]').focus(function() {
	        var input = $(this);
	        if (input.val() == input.attr('placeholder')) {
	            input.val('');
	            input.removeClass('placeholder');
	        }
	    }).blur(function() {
	        var input = $(this);
	        if (input.val() == '' || input.val() == input.attr('placeholder')) {
	            input.addClass('placeholder');
	            input.val(input.attr('placeholder'));
	        }
	    }).blur();
	};
	
	//文本输入框的place holder功能
	$("input,textarea").focus(function(){		
		var input = $(this);
		$("label[for='"+input.attr("id")+"']").hide();
	}).blur(function(){
		var input = $(this);
		if($.trim(input.val())==""){
			input.val("");
			$("label[for='"+input.attr("id")+"']").show();
		}
	}).blur();
});
function placeholderSupport() {
    return 'placeholder' in document.createElement('input');
}
//弹框
function layerShow(showbtn,closebtn,surebtn,showele){
    var layer = $('#layer');
    showbtn.on('click',function(){
        layer.fadeIn();
        var _left = ($(window).width() - $(showele).width())/2;
        var _top = ($(window).height() - $(showele).height())/2;
        $(showele).css({'position':'fixed','left':_left,'top':_top,'z-index':999999999});
        $(window).on('resize',function(){
            _left = ($(window).width() - $(showele).width())/2;
            _top = ($(window).height() - $(showele).height())/2;
            $(showele).css({'position':'fixed','left':_left,'top':_top});
        });
        $(showele).fadeIn();
    });
    $(closebtn).on('click',function(){
        layer.fadeOut();
        $(showele).fadeOut();
    });
    $(surebtn).on('click',function(){
        layer.fadeOut();
        $(showele).fadeOut();
    });
}

//回到顶部按钮
	$(function(){
		showScroll();
		function showScroll(){
			$(window).scroll( function() { 
				var scrollValue=$(window).scrollTop();
				scrollValue > 100 ? $('div[class=scroll]').fadeIn():$('div[class=scroll]').fadeOut();
			} );	
			$('#to_top').click(function(){
				$("html,body").animate({scrollTop:0},200);	
			});	
		}
	});



//微信
$(function(){
	 function ymHover(t,h){
	 	var timer=null;
        $(t).on('mouseenter',function(){
            clearTimeout(timer);
            $(h).css("display","block");
        });
        $(t).on('mouseleave',function(){
            timer = setTimeout(function(){
                $(h).css("display","none");
            });    
        });
        $(h).on('mouseenter',function(){
            clearTimeout(timer);
        });
        $(h).on('mouseleave',function(){
            timer = setTimeout(function(){
                $(h).css("display","none");
            });
        });
    }
	    ymHover(".gzwb_box",".side_weibo_jgz");
});

//搜索
$(function() {
	$(".select_box").click(function(event) {
		event.stopPropagation();
		$(this).find(".option").toggle();
		$(this).parent().siblings().find(".select_box .option").hide();
	});
	$(document).click(
			function(event) {
				var eo = $(event.target);
				if ($(".select_box").is(":visible")
						&& eo.attr("class") != "option"
						&& !eo.parent(".option").length)
					$('.select_box .option').hide();
			});
	/* 赋值给文本框 */
	$(".select_box .option a").click(function() {
		var value = $(this).text();
		$(this).parent().siblings(".select_txt").text(value);
		$("#select_value").val(value);
	});
});

//选项卡

$(function() {
    function tabs(tabTit, on, tabCon,mouseHee) {
        $(tabCon).each(function() {
            $(this).children().eq(0).show();
        });
        $(tabTit).each(function() {
            $(this).children().eq(0).addClass(on);
        });
        $(tabTit).children().on(mouseHee,function() {
            $(this).addClass(on).siblings().removeClass(on);
            var index = $(tabTit).children().index(this);
            $(tabCon).children().eq(index).show().siblings().hide();
        });
    }
    tabs(".tab_shop .tab_hd", "current", ".tab_shop .tab_bd",'click');
    tabs(".logo_hd", "current", ".logo_db",'click');
    tabs(".det_hd", "curr", ".r_container",'click');
    tabs(".tab_list", "current", ".tabcon_box",'hover');
    tabs(".hw_tf .hw_top", "current", ".hw_tf .hw_box",'hover');
    tabs(".gz_tf .hw_top", "current", ".gz_tf .hw_box",'hover');
    tabs(".sj_tab .tab_hd", "current", ".sj_tab .tab_bd",'hover');
});

$(function(){
 	function tabH(tabHit,on){
 		$(tabHit).children().click(function(){
 			$(this).addClass(on).siblings().removeClass(on);
 			
 		});
 		 
 	}
 	tabH(".al_tab .tab_hd","current");
// 	tabH(".news_tit","cr");
 });
 /*对比页面的收缩*/
$(function(){
	$(".row_tit").toggle(function(){
		if($(this).find("em").text()=="+"){
			$(this).find("em").text("-");
		}else{
			
			$(this).find("em").text("+");
		}
		$(this).next().hide();
		$(this).css("border-bottom","1px solid #999999");
	},function(){
		if($(this).find("em").text()=="+"){
			$(this).find("em").text("-");
		}else{
			
			$(this).find("em").text("+");
		}
		$(this).next().show();
		$(this).css("border-bottom","none");
	});
	
});

$(function(){	
    // 弹窗(我要投放，我要上传)
    layerShow($(".delivery"),'.tc1 .close_btn','','.tc1');
    layerShow($('.upload'),'.tc2 .close_btn','.ym_wp','.tc2');
    layerShow($('.upload'),'.tc2 .close_btn','.ym_dl','.tc2');
    layerShow($('.upload'),'.tc2 .close_btn','.ym_up','.tc2');
});

$(function(){
	var $moreBtn= $(".busCategory .guide_more");
	$moreBtn.next().find("li:gt(7)").hide();
	$moreBtn.each(function(i){
		if($(this).next().find("li").length<=8){
		$(this).hide();
	    }
		$(this).click(function(){
		  	  if($(this).find("i").hasClass('uimore_1')&&$(this).text()=="收起"){
		  	  	$(this).html("<a>更多<i class=\"uimore\"></i></a>");
		
		}else if($(this).text()=="更多"){
			$(this).html("<a>收起<i class=\"uimore uimore_1\"></i></a>");
		}else if($(this).find("i").hasClass('uimore_1')){
				$(this).find("i").removeClass("uimore_1");
		}else{
			$(this).find("i").addClass("uimore_1");
		}
		$(this).next().find("li").each(function(i){
			if(i >= 8){
				$(this).toggle();
			}
		});
		  })
	})
})

//高速媒体
$(function(){  
        var Z_MenuList=$(".guide_line");
        var Z_SubList=$(".freeway_box")
		$(Z_MenuList).find('li').live('mouseover', function(e, index) {
			var thisLi = this;
			var timeOut = setTimeout(function() {
				showSubList(thisLi);
			},200);
			$(Z_SubList).hover(function() {
				clearTimeout(timeOut);
			},function() {
				hideSubList(thisLi);
			});
			e.stopPropagation();
		}).live('mouseout', function(e) {
			var thisLi = this;
			var timeOut = setTimeout(function(){
				hideSubList(thisLi);
			}, 200);
			$(Z_SubList).hover(function() {
				clearTimeout(timeOut);
			},function() {
				hideSubList(thisLi);
			});
			e.stopPropagation();
		});
        	function showSubList(thisLi) {
			var thisIndex = $(Z_MenuList).find('li').index($(thisLi));
			var subExList = $(Z_SubList).find('div');
			$(thisLi).find("s").show();
			$(subExList).each(function(index) {
				if(index == thisIndex && $(this).find('li').length>0) {
					$(this).show();
					$(thisLi).find("s").show().find("s").siblings().hide();
				    $(thisLi).addClass("current");
				} else {
					$(this).hide();
					$(Z_MenuList).children().eq(index).find('s').hide();
				}
			});
			
			$(Z_SubList).show()
		};

		function hideSubList(thisLi) {
			$(Z_SubList).hide();
			$(Z_MenuList).find("s").hide();
			$(Z_MenuList).find("li").removeClass("current")
		};
})
