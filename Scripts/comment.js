function commentOn(){var o=this;var _verify=new verifycodes();this.init=function(){var btn=$("#btn_comment");var txt=$("#clt_CommentText");var parm=$("#clt_comment_param");txt.autosize({append:"\n"});txt.each(function(){$.maxLength($(this).attr("id"),500)});btn.button().click(function(){o.submit(0,parm.val(),txt.val(),this,null)});$(".commentStat").html($("#comment>.comment-tit>i>b").text());o.loadDel();return o};this.submit=function(submitType,parm,contents,obj,fn){var p=parm.split("_");var isvcode=parseInt(p[6]);if(isvcode==-1){location.href="/reg/login.html"}else{if(o.replaceBackspace(contents)==""){$(obj).parent().parent().find("textarea").val("").focus()}else{if(o.strChineseLen(o.replaceBackspace(contents))<2){o.jalert("评论内容不能少于2个汉字",obj)}else{if(contents.length>500){o.jalert("评论内容不能超过500个字符",obj)}else{if(parseInt(p[1])<=0){o.jalert("评论非法提交",obj)}else{o.submitdb(submitType,parm,contents,obj,fn)}}}}}};this.submitdb=function(submitType,parm,contents,btn,fn){if(!$(btn).prop("disabled")){glb.ajax(glb.ajaxUrl+"savecommenton","html","submitType="+submitType+"&parm="+parm+"&contents="+contents,function(){$(btn).prop("disabled",true)},function(data){var row=data.substring(data.indexOf("@")+1,data.length);var status=data.substring(0,data.indexOf("@"));switch(parseInt(status)){case 1:var parentID=parseInt(parm.split("_")[3]);if(submitType==1){fn.call(this,row,parentID,btn)}else{var item=$(btn).parent().parent();item.find("textarea").val("");$.jfnclose();$.jsuccess("发表评论成功",250,null,null);if(parentID==0){var stat=parseInt($("#comment>.comment-tit>i>b").text());$(".commentStat").html(stat+1);$("#comment>.comment-tit>i>b").html(stat+1);$(".comment-list").eq(0).prepend(row);if(stat==0){$(".comment-list>.norow").remove()}}else{var item=$(btn).parent().parent();item.after(row);item.remove()}o.loadDel()}break;case 2:o.jalert("抱歉，系统检测到您有严重违规操作行为，已被禁止操作",btn);break;case 3:o.jalert("操作失败，您提交的内容含有敏感关键词",btn);break;case 5:o.jalert("评论内容必须在1-500个字符之间",btn);break;case 6:$.jconfirm("","发表评论需先激活账号，确定要激活账号吗？<br /><br />",500,function(){$.jfnclose();location.href="/reg/verify.html"});break;case 7:$.jconfirm("","您的咨询师账号尚未通过审核，不能发表评论。请检查您的资料是否已完善？<br /><br />",700,function(){$.jfnclose();location.href="/reg/success.html"});break;case 8:o.jalert("抱歉，您已被当前内容作者拉入黑名单，不能参与该内容的任何互动",btn);break;case 9:o.jalert("抱歉，您已被网站管理员拉入黑名单，不能发表评论",btn);break;case 10:o.jalert("抱歉，您要回复的用户把您拉入黑名单了，不能回复此用户",btn);break;case 11:o.jalert("抱歉，您已被当前评论发起者拉入黑名单，不能参与该评论的任何互动",btn);break;case 12:o.jalert("抱歉，您今天发表的评论数已达上限，明天继续哦",btn);break;default:o.jalert("系统繁忙,请稍候提交...",btn)}$(btn).prop("disabled",parseInt(status)!=2?false:true)},function(){$(btn).prop("disabled",false);o.jalert("系统繁忙,请稍候提交...",btn)})}};this.replay=function(parm,obj){var p=parm.split("_");if(parseInt(p[6])==-1){location.href="/reg/login.html"}else{var un=$(obj).parent().find("a").eq(0).text();if($("#comment-replay-form").length>0&&o.replaceBackspace($("#clt_CommentText_replay").val())!=o.replyTxt(un)){$.jconfirm("","您确定要放弃正在编辑的评论吗？",null,function(){$("#comment-replay-form").remove();o.replay(parm,obj)})}else{var _addObj=null;var shtml='<li id="comment-replay-form"><textarea id="clt_CommentText_replay" name="clt_CommentText_replay" cols="20" rows="2" onpaste="return false;" context="noContext;">'+o.replyTxt(un)+'</textarea><span><input id="btn_comment_replay" type="button" value="发表" /></span></li>';if($(obj).parent().parent().find("ul").length>0){_addObj=$(obj).parent().parent().find("ul")}else{if($(obj).parent().parent().parent().attr("class").indexOf("comment-list-pd")!=-1){_addObj=$(obj).parent().parent().parent()}else{_addObj=$(obj).parent().parent();shtml='<ul class="comment-list comment-list-pd">'+shtml+"</ul>"}}_addObj.append(shtml);var contents=$("#clt_CommentText_replay");$("#btn_comment_replay").button().click(function(){o.submit(0,parm,contents.val().replace(o.replyTxt(un),""),this,null)});contents.autosize({append:"\n"}).css("color","#a7a7a7").keyup(function(){$(this).css("color","#414141")}).blur(function(){if(o.replaceBackspace(contents.val())==o.replyTxt(un)){$("#comment-replay-form").remove()}});var t=contents.val();contents.val("").focus().val(t);contents.each(function(){$.maxLength($(this).attr("id"),500)})}}};this.del=function(submitType,parm,obj,fn){var p=parm.split("_");var parentId=p[4];var buid=p[5];var uid=p[6];var item=$(obj).parent().parent();if(uid<=0){location.href="/reg/login.html"}else{var un=uid!=buid?("“"+$(obj).parent().find("a:first").text()+"”"):"";var v="确定要删除"+(un!=""?un+"的":"")+"此条评论吗？<br />";if(parentId==0&&item.find("ul").length>0){v+="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;此条评论下的子回复也将全部删除<br />"}if(uid!=buid){v+='<br /><span class="del_blackform"><br /><input type="checkbox" id="clt_commentOn_del" name="clt_commentOn_del" /><label for="clt_commentOn_del">同时将'+un+'拉入黑名单</label><br />注：拉黑后此人将不能与您进行任何互动，可在“账户设置><a href="/uc/sets/black.html" target="_blank">黑名单</a>”中取消</span>'}$.jconfirm("删除提示",v,500,function(){var isblack=uid!=buid&&$("#clt_commentOn_del").length>0&&$("#clt_commentOn_del").prop("checked")?1:0;glb.ajax(glb.ajaxUrl+"delcommenton","JSON","parm="+parm+"&isblack="+isblack,null,function(data){var d=eval(data);if(d.status==1){if(submitType==1){fn.call(this,isblack,obj)}else{item.fadeOut();$.jsuccess("删除"+(isblack==1?"并拉黑":"")+"成功",250,null,null)}}else{if(d.status==2){o.jalert("删除失败,拉入黑名单时出现异常",null)}else{if(d.status==3){var _info='删除失败，您的黑名单名额已满，需要管理黑名单才能操作！<br /><br /><span class="del_blackinfo"><span>确定要管理黑名单吗？<br /><br /></span>';_info+=d.isdr==1?"·&nbsp;可利用特权增加黑名单的名额<br />":"";_info+="·&nbsp;可删除已拉黑的名额，以此来增加新名额</span>";$.jconfirm("删除提示",_info,600,function(){$.jfnclose();location.href="/uc/sets/black.html"})}else{o.jalert("系统繁忙,请稍候再提交...",null)}}}},function(){o.jalert("系统繁忙,请稍候再提交...",null)})})}};this.load=function(parm,obj){var _more=$(obj).parent();var _fail='加载失败，<a href="javascript:void(0);" onclick="_commenton.load(\''+parm+"',this)\">[点击重新加载]</a>";glb.ajax(glb.ajaxUrl+"showcommentonlist","html","parm="+parm,function(){_more.html("数据加载中...")},function(data){if(data==""||data.indexOf("msgstatus")!=-1){_more.html(_fail)}else{_more.after(data);_more.remove();o.loadDel()}},function(){_more.html(_fail)})};this.loadDel=function(){$(".comment-list>.item").mouseover(function(e){$(this).find(".comment-txt>.del").eq(0).attr("title","删除").show();e.stopPropagation()}).mouseout(function(){$(this).find(".comment-txt>.del").hide()})};this.first=function(a){if(a>0){$("#clt_CommentText").focus()}else{location.href="/ref/login.html"}};this.jalert=function(info,obj){$.jalerttimer("操作提示",info+"<br /><br />",650,function(){if(obj!=null){$(obj).parent().parent().find("textarea").focus()}$.jfnclose()},9)};this.replyTxt=function(un){return un!=""&&un!=null?"回复"+un+"：":""};this.replaceBackspace=function(s){return s!=null&&s!=""?s.replace(/(^\s*)|(\s*$)/g,""):s};this.strChineseLen=function(str){var strlength=0;var lst=/[u00-uFF]/;for(i=0;i<str.length;i++){if(!lst.test(str.charAt(i))){strlength=strlength+1}}return strlength}};