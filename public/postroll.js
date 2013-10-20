<script type="text/javascript">

var overImg;
var video;

function onTemplateLoaded(pPlayer) {
    player = bcPlayer.getPlayer(pPlayer);
    exp     = player.getModule(APIModules.EXPERIENCE);
    video     = player.getModule(APIModules.VIDEO_PLAYER);
    video.addEventListener(BCMediaEvent.COMPLETE, onMediaComplete);
    video.addEventListener(BCMediaEvent.CHANGE, ClearImg);        
    video.addEventListener(BCMediaEvent.PLAY, ClearImg);    
    overImg = exp.getElementByID("imageOverlay");
}

function onMediaComplete(e) {
    var videoloaded  = video.getCurrentVideo();
    var url = videoloaded.customFields.linkimg;
    overImg.setSource(url);
    overImg.setURL(videoloaded.linkURL);
}

function ClearImg(e) {
    overImg.setSource("");
    overImg.setURL("");
}

</script>