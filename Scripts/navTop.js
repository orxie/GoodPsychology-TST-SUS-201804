$(function(){	

	var oHd = $(".top");
	var iH = oHd.offset().top;
		$(window).scroll(function(){
			if( $(this).scrollTop() > iH){
				oHd.css({"position":"fixed","top":0,"z-index":999999});
			}else{
				oHd.css({"position":"relative","top":0});
			}
		});
})

//搜索
$(function(){
$(".select_box").click(function(event){
event.stopPropagation();
$(this).find(".option").toggle();
$(this).parent().siblings().find(".select_box .option").hide();
});
$(document).click(function(event){
var eo=$(event.target);
if($(".select_box").is(":visible") && eo.attr("class")!="option" && !eo.parent(".option").length)
$('.select_box .option').hide();
});
/*赋值给文本框*/
$(".select_box .option a").click(function(){
var value=$(this).text();
$(this).parent().siblings(".select_txt").text(value);
$("#select_value").val(value)
})
})