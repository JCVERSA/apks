(function() {
	'use strict';

  const timer = setInterval(() => {
    getScriptInfo();
  }, 500)


function getScriptInfo() {
  const scriptLabel = document.querySelector('#__NEXT_DATA__');
  if(!scriptLabel) return ;
  console.log(scriptLabel.innerHTML, 'scriptLabel')
  const contentText = JSON.parse(scriptLabel.innerHTML);
  console.log(contentText, 'contentText')
  const videoData = contentText.props.pageProps.videoData;
  if(!videoData) {
    console.log("not get video data", 'videoData')
    return
  }
  const videoInfo = contentText.props.pageProps.videoData.playerData;
  const h264Info = JSON.parse(videoInfo).resources.h264[0]
  const thumb = JSON.parse(videoInfo).thumb;
  const title = JSON.parse(videoInfo).title;
  console.log(title,'title')
  console.log(thumb,'thumb')
  console.log(h264Info.file, 'videoUrl')
  download(h264Info.file,title,thumb)
}



	function download(url,title,thumb) {
    const videoInfo = {
      videoWidth: 0, //帧宽
      videoHeight:0, //帧高
      type: 'mp4', //视频格式
      size:0, //视频大小
      duration: 0, //视频时长
      url: url, //资源地址
    }
    let sniffInfo = {
      title: title, //视频名称
      videoCover: thumb,//格式：base64、url
      encryptionType: '', //加密方式 后续可能扩展
      hasResources: url ? true : false, //是否探测到资源
      videoList: [//资源列表

      ]

    }
    sniffInfo.videoList.push(videoInfo);
		sniffInfo = JSON.stringify([sniffInfo]);
    try {
	  	window.SniffWebViewJs.onCanDownloadMedia(sniffInfo);
    } catch (error) {
      // checkStepPoin(2, JSON.stringify(error));
    }
		// clickBuriedPoint(info.url ? 1 : 0 , info.url);

    clearInterval(timer);
	}
})();

