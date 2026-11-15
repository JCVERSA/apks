console.log("ted sniff video injected succeeded");
function getVideos(url) {
  console.log("getVideos", url);
  if (!url) {
    console.log("url does not exist");
    // const rep = {
    //   url: url,
    //   code: 0,
    //   data: null,
    //   msg: "url does not exist",
    // };
    let rep = {
      name: "", //视频名称
      img: "", //格式：base64、url
      encryptionType: "", //加密方式 后续可能扩展
      hasResources: false, //是否探测到资源
      videoList: [
        //资源列表
      ],
    };
    //callback && callback(rep);
    window.SniffWebViewJs &&
      window.SniffWebViewJs.onGetVideos(JSON.stringify(rep));
    return;
  }
  // "https://www.ted.com/_next/data/8KCwKeIRVHbDKsVWTg_sp/talks/ted_ed_what_if_you_experienced_every_human_life_in_history.json?slug=ted_ed_what_if_you_experienced_every_human_life_in_history"
  try {
    fetch(url)
      .then((response) => response.json())
      .then((result) => {
        // Do things with result
        const rep = {
          url: url,
          code: 1,
          data: result,
          msg: "success",
        };

        console.log(result);
        //callback && callback(rep);
        let sniffInfo = {
          name: "", //视频名称
          img: "", //格式：base64、url
          encryptionType: "", //加密方式 后续可能扩展
          hasResources: url ? true : false, //是否探测到资源
          videoList: [
            //资源列表
          ],
        };

        //         const playerData = result.pageProps.videoData.playerData;
        //         const h264Info = JSON.parse(playerData).resources.h264[0]
        //         videoInfo.url = h264Info.file;
        //         videoInfo.duration = JSON.parse(playerData).duration;
        //         console.log(videoInfo.url);
        //         sniffInfo.videoList.push(videoInfo);
        //         sniffInfo.img = JSON.parse(playerData).thumb
        //         sniffInfo.name = JSON.parse(playerData).title

        const videos = result.data.videos.nodes[0].nativeDownloads;
        if (videos) {
          const low_videoInfo = {
            videoWidth: 0, //帧宽
            videoHeight: 0, //帧高
            type: "mp4", //视频格式
            size: 0, //视频大小
            duration: 0, //视频时长
            url: url, //资源地址
          };

          low_videoInfo.url = videos.low;
          console.log(low_videoInfo.url);
          sniffInfo.videoList.push(low_videoInfo);

          const medium_videoInfo = {
            videoWidth: 0, //帧宽
            videoHeight: 0, //帧高
            type: "mp4", //视频格式
            size: 0, //视频大小
            duration: 0, //视频时长
            url: url, //资源地址
          };
          medium_videoInfo.url = videos.medium;
          console.log(medium_videoInfo.url);
          sniffInfo.videoList.push(medium_videoInfo);
          const high_videoInfo = {
            videoWidth: 0, //帧宽
            videoHeight: 0, //帧高
            type: "mp4", //视频格式
            size: 0, //视频大小
            duration: 0, //视频时长
            url: url, //资源地址
          };
          high_videoInfo.url = videos.high;
          console.log(high_videoInfo.url);
          sniffInfo.videoList.push(high_videoInfo);
        }

        const scriptLabel = document.querySelector("#__NEXT_DATA__");
        if (scriptLabel) {
          //console.log(scriptLabel.innerHTML, "scriptLabel");
          const contentText = JSON.parse(scriptLabel.innerHTML);
          //console.log(contentText, "contentText");
          const videoData = contentText.props.pageProps.videoData;
          if (videoData) {
            const playerData = contentText.props.pageProps.videoData.playerData;
            if (playerData) {
              sniffInfo.img = JSON.parse(playerData).thumb;
              sniffInfo.name = JSON.parse(playerData).title;

              console.log(sniffInfo.img);
              console.log(sniffInfo.name);

              if (sniffInfo.videoList.length <= 0) {
                const h264Info = JSON.parse(playerData).resources.h264[0];
                const currten_videoInfo = {
                  videoWidth: 0, //帧宽
                  videoHeight: 0, //帧高
                  type: "mp4", //视频格式
                  size: 0, //视频大小
                  duration: 0, //视频时长
                  url: url, //资源地址
                };

                if (h264Info && h264Info.file) {
                  currten_videoInfo.url = h264Info.file;
                  sniffInfo.videoList.push(currten_videoInfo);
                }
              }
            }
          }
        }

        sniffInfo = JSON.stringify([sniffInfo]);
        window.SniffWebViewJs && window.SniffWebViewJs.onGetVideos(sniffInfo);
      });
  } catch (error) {
    // const rep = {
    //   url: url,
    //   code: 0,
    //   data: null,
    //   msg: JSON.stringify(error),
    // };

    let rep = {
      name: "", //视频名称
      img: "", //格式：base64、url
      encryptionType: "", //加密方式 后续可能扩展
      hasResources: false, //是否探测到资源
      videoList: [
        //资源列表
      ],
    };
    //callback && callback(rep);
    console.log(error);
    window.SniffWebViewJs &&
      window.SniffWebViewJs.onGetVideos(JSON.stringify(rep));
  }
}
