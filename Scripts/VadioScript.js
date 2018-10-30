//控制视频页面的播放
$(function () {
    $("#filelist").on('click', ".video_link", function radiohide() {
        var videoDom = event.target;
        if (videoDom.paused) {
            videoDom.play();
        } else {
            videoDom.pause();
        }
    });
//模态框隐藏停止播放
    $("#Vadio").on('hidden.bs.modal', function () {
        var vadiodom = document.getElementById("videodemo");
        vadiodom.controls = true;
        if (!vadiodom.paused) {
            vadiodom.pause();
        }
    });
});