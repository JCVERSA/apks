(function () {
  "use strict";
  let groupIdUrls = {};
  let currentGroupId = "";

  let downImgWidth = "15.5vw";
  let downImgHeight = "15.5vw";

  const mQuery = window.matchMedia("(min-width: 500px)");
  if (mQuery.matches) {
    downImgWidth = "60px";
    downImgHeight = "60px";
  }

  let updating = false;
  let iframeVideoList = [];
  let currentUrl = document.location.href;
  //初始化
  let initTime = new Date().getTime();
  const iconDownload1 = `<div class="animation-btn icon-download1" >
                            <svg width="${
                              mQuery.matches ? "60px" : "15.5vw"
                            }" height="${
    mQuery.matches ? "60px" : "15.5vw"
  }" viewBox="0 0 168 168" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                <title>编组</title>
                                <g id="控件" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                    <g id="编组">
                                        <rect id="矩形备份-2" x="0" y="0" width="168" height="168"></rect>
                                        <rect id="矩形" fill="#FF4610" x="12" y="25" width="145" height="118" rx="20"></rect>
                                    </g>
                                </g>
                            </svg>
                            <svg class="animation-arrow" width="${
                              mQuery.matches ? "60px" : "15.5vw"
                            }" height="${
    mQuery.matches ? "60px" : "15.5vw"
  }" viewBox="0 0 168 168" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                              <title>编组</title>
                              <g id="控件" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                  <g id="编组">
                                      <rect id="矩形备份-2" x="0" y="0" width="168" height="168"></rect>
                                      <g id="编组-3" transform="translate(62.000000, 56.000000)" stroke="#F9F9F9" stroke-linecap="round" stroke-width="7">
                                          <g id="编组-4">
                                              <polyline id="路径" stroke-linejoin="round" transform="translate(22.500000, 38.789238) rotate(-180.000000) translate(-22.500000, -38.789238) " points="7.88133357e-14 50 22.5 27.5784753 45 50"></polyline>
                                              <line x1="22.6097561" y1="42.2669304" x2="23.0487805" y2="2.16677075e-12" id="路径-2"></line>
                                          </g>
                                      </g>
                                  </g>
                              </g>
                            </svg>
                          </div>`;

  const iconDownload2 = `<svg class="icon-download2" width="${
    mQuery.matches ? "60px" : "15.5vw"
  }" height="${
    mQuery.matches ? "60px" : "15.5vw"
  }" viewBox="0 0 193 179" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                          <title>编组备份</title>
                          <defs>
                              <rect id="path-1" x="12" y="25" width="145" height="118" rx="20"></rect>
                              <filter x="-29.0%" y="-25.4%" width="157.9%" height="171.2%" filterUnits="objectBoundingBox" id="filter-2">
                                  <feOffset dx="0" dy="12" in="SourceAlpha" result="shadowOffsetOuter1"></feOffset>
                                  <feGaussianBlur stdDeviation="12" in="shadowOffsetOuter1" result="shadowBlurOuter1"></feGaussianBlur>
                                  <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.255961812 0" type="matrix" in="shadowBlurOuter1"></feColorMatrix>
                              </filter>
                          </defs>
                          <g id="控件" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" opacity="0.396896362">
                              <g id="编组备份" transform="translate(12.000000, 0.000000)">
                                  <rect id="矩形备份-2" x="0" y="0" width="168" height="168"></rect>
                                  <g id="矩形">
                                      <use fill="black" fill-opacity="1" filter="url(#filter-2)" xlink:href="#path-1"></use>
                                      <use fill="#FE4610" fill-rule="evenodd" xlink:href="#path-1"></use>
                                  </g>
                                  <g id="编组-3" transform="translate(60.000000, 53.000000)" stroke="#F9F9F9" stroke-linecap="round" stroke-width="7">
                                      <g id="编组">
                                          <polyline id="路径" stroke-linejoin="round" transform="translate(25.000000, 42.668161) rotate(-180.000000) translate(-25.000000, -42.668161) " points="8.7570373e-14 55 25 30.3363229 50 55"></polyline>
                                          <line x1="25.1219512" y1="46.4936234" x2="25.6097561" y2="2.38344782e-12" id="路径-2"></line>
                                      </g>
                                  </g>
                              </g>
                          </g>
                        </svg>`;
  const iconDownload3 = `<svg class="icon-download3"  width="${
    mQuery.matches ? "60px" : "15.5vw"
  }" height="${
    mQuery.matches ? "60px" : "15.5vw"
  }" viewBox="0 0 193 179" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                        <title>编组 5</title>
                        <defs>
                            <rect id="path-1" x="12" y="25" width="145" height="118" rx="20"></rect>
                            <filter x="-29.0%" y="-25.4%" width="157.9%" height="171.2%" filterUnits="objectBoundingBox" id="filter-2">
                                <feOffset dx="0" dy="12" in="SourceAlpha" result="shadowOffsetOuter1"></feOffset>
                                <feGaussianBlur stdDeviation="12" in="shadowOffsetOuter1" result="shadowBlurOuter1"></feGaussianBlur>
                                <feColorMatrix values="0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.26 0" type="matrix" in="shadowBlurOuter1"></feColorMatrix>
                            </filter>
                        </defs>
                        <g id="控件" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                            <g id="编组-5" transform="translate(12.000000, 0.000000)">
                                <g id="编组">
                                    <rect id="矩形备份-2" x="0" y="0" width="168" height="168"></rect>
                                    <g id="矩形">
                                        <use fill="black" fill-opacity="1" filter="url(#filter-2)" xlink:href="#path-1"></use>
                                        <use fill="#FF4610" fill-rule="evenodd" xlink:href="#path-1"></use>
                                    </g>
                                    <g id="编组-3" transform="translate(62.000000, 56.000000)" stroke="#F9F9F9" stroke-linecap="round" stroke-width="7">
                                        <g id="编组-4">
                                            <polyline id="路径" stroke-linejoin="round" transform="translate(22.500000, 38.789238) rotate(-180.000000) translate(-22.500000, -38.789238) " points="7.88133357e-14 50 22.5 27.5784753 45 50"></polyline>
                                            <line x1="22.6097561" y1="42.2669304" x2="23.0487805" y2="2.16677075e-12" id="路径-2"></line>
                                        </g>
                                    </g>
                                </g>
                                <g id="编组-19" transform="translate(106.000000, 91.000000)">
                                    <circle id="椭圆形" stroke="#FFFFFF" stroke-width="4.92063492" fill="#FFFFFF" cx="31" cy="31" r="28.5396825"></circle>
                                    <g id="编组" transform="translate(24.916625, 14.677785)" fill="#FF4610" fill-rule="nonzero">
                                        <path d="M6.00004813,32 C4.15213675,32 2.65404119,30.6134749 2.65404119,28.9028028 C2.65404119,27.1922154 4.15213675,25.805595 6.00004813,25.805595 C7.84854835,25.805595 9.34659039,27.1922154 9.34659039,28.9028028 C9.34659039,30.6134855 7.8485484,32 6.00004813,32 Z M12,6.18405655 L9.34135491,20.8275334 C9.34135491,20.8437815 9.34659044,20.8588328 9.34659044,20.8749856 C9.34659044,22.5856683 7.84849489,23.9721827 6.00004819,23.9721827 C4.1521368,23.9721827 2.65404124,22.5856577 2.65404124,20.8749856 C2.65404124,20.8588222 2.65873074,20.8437392 2.65927677,20.8275334 L0,6.18405655 L0.0374623005,6.18405655 C0.0140362963,5.98267076 0,5.78013051 0,5.57409486 C0,2.4953701 2.68617165,0 6,0 C9.31383912,0 12,2.49537016 12,5.57409486 C12,5.78017291 11.9859209,5.98267082 11.9625056,6.18405655 L12,6.18405655 Z" id="形状"></path>
                                    </g>
                                </g>
                            </g>
                        </g>
                      </svg>`;
  // alert('测试环境');
  //防止重复注入
  if (window.isInitLoading) {
    dlInit(10001);
    return;
  }
  window.isInitLoading = true;
  dlInit(10000);
  addStyle();
  if (location.href.indexOf("tiktok.com") > -1) {
    addButton();
    window.addEventListener("touchend", () => {
      console.log("touchend");
      setTimeout(() => {
        addButton();
      }, 500);
    });
  } else {
    setFixedButton();
    locationChange();
    window.addEventListener("touchend", () => {
      if (updating) return;
      updating = true;
      console.log("touchend");
      checkAllVideo();
      setTimeout(() => {
        updating = false;
      }, 1000);
    });
  }
  function createStyle() {
    return `
    .animation-arrow{
      animation-name:phxVideoSniffBtnShake;
      animation-duration:2s;
      animation-iteration-count:infinite
    }
    @keyframes phxVideoSniffBtnShake{
      0%{transform:translateY(0)}
      6%{transform:translateY(-2px)}
      12%{transform:translateY(0)}
      18%{transform:translateY(2px)}
      24%{transform:translateY(0)}
      30%{transform:translateY(-2px)}
      36%{transform:translateY(0)}
      42%{transform:translateY(2px)}
      48%{transform:translateY(0)}
      54%{transform:translateY(-2px)}
      60%{transform:translateY(0)}
      66%{transform:translateY(2px)}
      72%{transform:translateY(0)}
      100%{transform:translateY(0)}
    }
    .animation-btn{
      position: relative;
      width: ${mQuery.matches ? "60px" : "15vw"};
      height: ${mQuery.matches ? "60px" : "15vw"};
    }
    .animation-arrow{
      position: absolute;
      left: 50%;
      top: 50%;
      margin-left: ${mQuery.matches ? "-30px" : "-7.25vw"};
      margin-top: ${mQuery.matches ? "-30px" : "-7.25vw"};
    }`;
  }

  function addStyle() {
    var style = document.createElement("style");
    style.type = "text/css";
    style.innerHTML = createStyle();
    window.document.head.appendChild(style);
  }
  //获取iframe内容
  function getIframeContent(panel) {
    panel.querySelectorAll("iframe").forEach((iframeItem) => {
      console.log(iframeItem, "iframeItem");
      let videoInfo = iframeItem.contentDocument
        ? iframeItem.contentDocument.querySelectorAll("video")
        : [];
      if (videoInfo.length > 0) {
        videoInfo.forEach((videoItem) => {
          iframeVideoList.push(videoItem.src);
        });
      }
      if (
        iframeItem.contentDocument &&
        iframeItem.contentDocument.querySelectorAll("iframe").length > 0
      ) {
        getIframeContent(iframeItem);
      }
    });
  }

  //js注入成功tongxin
  function dlInit(status) {
    const buriedPointInfo = {
      tid: 0,
      event_name: "dl_brower_rp_adl_init",
      buried_poin_params: {
        status: status,
        main_url: location.href,
      },
    };
    try {
      window.SniffWebViewJs.setBuriedPoint(JSON.stringify(buriedPointInfo));
    } catch (error) {}
  }
  //js技术性探测埋点
  function checkStepPoin(code, msg) {
    const buriedPointInfo = {
      tid: 0,
      event_name: "dl_brower_sniff",
      buried_poin_params: {
        code,
        msg,
        type: 2, //服务端
        mainUrl: location.href,
        domain_name: "",
        js_type: "",
        script_url: "",
      },
    };
    try {
      window.SniffWebViewJs.setBuriedPoint(JSON.stringify(buriedPointInfo));
    } catch (error) {}
  }
  //js注入成功到按钮曝光时间
  function showDuration(status, duration) {
    console.log("dl_brower_rp_adl_show_duration");
    const buriedPointInfo = {
      tid: 0,
      event_name: "dl_brower_rp_adl_show_duration",
      buried_poin_params: {
        status: status,
        duration: duration,
      },
    };
    try {
      window.SniffWebViewJs.setBuriedPoint(JSON.stringify(buriedPointInfo));
    } catch (error) {}
  }
  //上报曝光埋点
  function showBuriedPoint(status, url) {
    console.log("dl_brower_rp_adl_show", status);
    const buriedPointInfo = {
      tid: 932460000293,
      event_name: "dl_brower_rp_adl_show",
      buried_poin_params: {
        status: status,
        main_url: location.href,
        video_url: url,
      },
    };
    try {
      window.SniffWebViewJs.setBuriedPoint(JSON.stringify(buriedPointInfo));
    } catch (error) {}
  }
  //上报点击埋点
  function clickBuriedPoint(status, url) {
    console.log("dl_brower_rp_adl_cl", status);
    const buriedPointInfo = {
      tid: 932460000294,
      event_name: "dl_brower_rp_adl_cl",
      buried_poin_params: {
        status: status,
        main_url: location.href,
        video_url: url,
      },
    };
    try {
      window.SniffWebViewJs.setBuriedPoint(JSON.stringify(buriedPointInfo));
    } catch (error) {}
  }
  //JS注入后到嗅探按钮曝光前的数据状态上报
  function beforeClickBuriedPoint(status, url) {
    console.log("dl_brower_rp_adl_cls", status);
    const buriedPointInfo = {
      tid: 932460000295,
      event_name: "dl_brower_rp_adl_cls",
      buried_poin_params: {
        status: status,
        main_url: location.href,
        video_url: url,
      },
    };
    if (!url || url.indexOf("blob:") > -1) {
      buriedPointInfo.buried_poin_params["error_code"] =
        url.indexOf("blob:") > -1 ? 10001 : 10000;
    }
    try {
      window.SniffWebViewJs.setBuriedPoint(JSON.stringify(buriedPointInfo));
    } catch (error) {}
  }
  function checkAllVideo() {
    console.log(document.querySelectorAll("video"), "checkAllVideo");
    setTimeout(() => {
      iframeVideoList = [];
      getIframeContent(document);
      if (
        document.querySelectorAll("video").length > 0 ||
        iframeVideoList.length > 0
      ) {
        const list = validateDownload();
        if (list.length > 0) {
          console.log(list, "list val");
          changeButtonStyle(1);
        } else {
          changeButtonStyle(3);
        }
      } else {
        changeButtonStyle(2);
      }
    }, 500);
  }
  function validateDownload() {
    let downloadList = [];
    const documentVideoList = document.querySelectorAll("video");
    documentVideoList.forEach((item) => {
      if (item.src && item.src.indexOf("blob:") < 0) {
        downloadList.push(item.src);
      }
    });
    iframeVideoList.forEach((item) => {
      if (item.src && item.src.indexOf("blob:") < 0) {
        downloadList.push(item.src);
      }
    });
    return downloadList;
  }
  function changeButtonStyle(type) {
    const escapeHTMLPolicy = trustedTypes.createPolicy("default", {
      createHTML: (to_escape) => to_escape,
    });
    if (type === 1) {
      if (
        !document
          .querySelector(".fixed-download-button")
          .querySelector(".icon-download3")
      ) {
        showBuriedPoint(0, "");
        beforeClickBuriedPoint(0, "");
      }
      document.querySelector(".fixed-download-button").innerHTML =
        escapeHTMLPolicy.createHTML(iconDownload3);
    } else if (type === 2) {
      if (
        !document
          .querySelector(".fixed-download-button")
          .querySelector(".icon-download2")
      ) {
        showBuriedPoint(2, "");
        beforeClickBuriedPoint(2, "");
      }
      document.querySelector(".fixed-download-button").innerHTML =
        escapeHTMLPolicy.createHTML(iconDownload2);
    } else if (type === 3) {
      if (
        !document
          .querySelector(".fixed-download-button")
          .querySelector(".icon-download3")
      ) {
        showBuriedPoint(0, "");
        beforeClickBuriedPoint(0, "");
      }
      document.querySelector(".fixed-download-button").innerHTML =
        escapeHTMLPolicy.createHTML(iconDownload3);
    }
  }
  function setFixedButton() {
    const button = document.createElement("div");
    console.log(
      document.querySelectorAll("video"),
      'document.querySelectorAll("video")'
    );
    let currentTime;
    let duration = 0;
    if (!window.showFirstBtn) {
      window.showFirstBtn = true;
      currentTime = new Date().getTime();
      duration = currentTime - initTime;
      console.log(duration, "duration");
    }

    button.addicon = true;
    button.className = `fixed-download-button`;
    button.addEventListener("click", onFixedClick);
    button.style.position = "fixed";
    button.style.width = downImgWidth;
    button.style.height = downImgHeight;
    button.style.bottom = "17vh";
    button.style.right = "6.1vw";
    button.style.zIndex = "9999999";
    document.body.appendChild(button);
    iframeVideoList = [];
    checkAllVideo();
    getIframeContent(document);
    if (
      document.querySelectorAll("video").length > 0 ||
      iframeVideoList.length > 0
    ) {
      showDuration(1, duration);
    } else {
      showDuration(2, duration);
    }
  }
  function onFixedClick() {
    if (
      document.querySelectorAll("video").length > 0 ||
      iframeVideoList.length > 0
    ) {
      const list = validateDownload();
      // if(list.length > 0) {
      clickBuriedPoint(0, "");
      alert("Videos cannot be downloaded at present");
      // }else{
      //   clickBuriedPoint(0 , '');
      //   alert('Video parsing failed');
      // }
    } else {
      clickBuriedPoint(2, "");
      alert("No videos was found");
    }
  }
  function addButton() {
    document.querySelectorAll("video").forEach((panel) => {
      const isFirefox = typeof InstallTrigger !== "undefined";
      if (
        !isFirefox &&
        !panel.parentElement.parentElement.querySelector(".download-set")
      ) {
        setButton(
          panel.parentElement.parentElement,
          "download-set",
          iconDownload1
        );
      }
      setTimeout(() => {
        document
          .querySelectorAll(".swiper-slide:not(.swiper-slide-active)")
          .forEach((element) => {
            if (!element.querySelector("video")) {
              element.querySelectorAll(".download-set").forEach((item) => {
                item.parentElement.removeChild(item);
              });
            }
          });
      }, 500);
    });
  }

  function setButton(panel, myClass, icon1) {
    // create
    const button = document.createElement("div");
    button.innerHTML = icon1;
    button.addicon = true;
    button.className = `${myClass}`;
    button.addEventListener("click", onClick);
    console.log(panel.style.position, "panel.style.position");
    if (!panel.style.position || panel.style.position !== "absolute") {
      panel.style.position = "relative";
    }
    button.style.position = "absolute";
    button.style.width = mQuery.matches ? "60px" : "15.4vw";
    button.style.height = mQuery.matches ? "60px" : "15.4vw";
    button.style.bottom = "11vh";
    button.style.right = "6.1vw";
    button.style.zIndex = "9999999";

    const video =
      panel.querySelector("video") || document.querySelector("video");

    // if (video.src.indexOf('blob:') > -1) {
    //   // let groupIdUrls = {};
    //   // let currentGroupId = "";
    //   console.log('视频链接2222', groupIdUrls[currentGroupId])
    //   showBuriedPoint(0, video.src);
    //   beforeClickBuriedPoint(0, video.src || '');
    //   return;
    // };
    if (location.href.indexOf("tiktok.com") > -1 && !window["latestDownSign"]) {
      return;
    }
    panel.appendChild(button);
    beforeClickBuriedPoint(1, video.src || "");
    showBuriedPoint(1, video.src || "");

    if (video.src.indexOf("blob:") > -1) {
      if (
        location.href.indexOf("tiktok.com") > -1 &&
        !groupIdUrls[currentGroupId] &&
        !getUrlByUserName()
      ) {
        document
          .querySelector(".swiper-slide-active")
          .querySelector(".download-set").style.display = "none";
      }
      if (!window["latestDownSign"]) {
        document
          .querySelector(".swiper-slide-active")
          .querySelector(".download-set").style.display = "none";
      }
    }
    if (
      video.src.indexOf("blob:") > -1 &&
      !groupIdUrls[currentGroupId] &&
      !getUrlByUserName()
    ) {
      document
        .querySelector(".swiper-slide-active")
        .querySelector(".download-set").style.display = "none";
    }

    if (!window.showFirstBtn) {
      window.showFirstBtn = true;
      let currentTime = new Date().getTime();
      const duration = currentTime - initTime;
      console.log(duration, "duration");
      if (video.src.indexOf("blob:") > -1) {
        showDuration(0, duration);
      } else {
        showDuration(1, duration);
      }
    }
  }

  function onClick(e) {
    console.log("onclick");
    if (e.stopPropagation) {
      e.stopPropagation();
    } else {
      window.event.cancelBubble == true;
    }
    if (e.preventDefault) {
      e.preventDefault();
    } else {
      window.event.returnValue == false;
    }
    const parent = this.parentElement;
    console.log(parent, "this");
    const video = parent.getElementsByTagName("video")[0];
    let screenImg;
    let imgUrl;
    if (parent.querySelector(".blur-background")) {
      screenImg =
        parent.querySelector(".blur-background").style.backgroundImage;
      imgUrl = screenImg.replace('url("', "").replace('")', "");
    } else if (parent.querySelector("img")) {
      screenImg = parent.querySelector("img") || "";
      imgUrl = screenImg.src;
    }

    console.log(screenImg, imgUrl, "screenImg");
    const url = video.src;
    const duration = video.duration;
    const videoWidth = video.videoWidth;
    const videoHeight = video.videoHeight;
    const title = new Date().getTime();
    const type = "mp4";
    console.log("视频地址====", url, duration);
    const size = 0;
    const info = {
      url,
      duration: null,
      videoWidth: null,
      videoHeight: null,
      title,
      type,
      imgUrl,
      size,
    };
    let blobUrl = "";
    if (info.url.indexOf("blob:") > -1) {
      blobUrl = groupIdUrls[currentGroupId] || getUrlByUserName();
      // info.type = "blob";
      info.url = blobUrl;
    }
    console.log("blobUrl: ", info.url);
    info["other"] = {
      Accept: "*/*",
      "Accept-Language": "zh-CN,zh;q=0.9",
      Origin: "https://www.tiktok.com",
      Referer: "https://www.tiktok.com/",
      "User-Agent":
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36",
      Range: "bytes=0-",
    };
    // console.log("视频链接11111", blobUrl);
    // console.log(info, "infoinfoinfo");
    download(info);
  }
  window.getUrlByUserName = function () {
    let user_name = "";
    let resultUrl = "";
    try {
      for (let item of document
        .querySelector(".swiper-slide-active")
        .getElementsByTagName("a")) {
        if (item.href.indexOf("/@") !== -1) {
          user_name = item.href.split("@")[1];
        }
      }
      let itemList = Object.keys(window.SIGI_STATE.MobileItemModule);
      let mobileItemModule = window.SIGI_STATE.MobileItemModule;
      for (let index = 0; index < itemList.length; index++) {
        let item = itemList[index];
        if (mobileItemModule[item].author == user_name) {
          resultUrl = mobileItemModule[item].video["playAddr"];
        }
      }
    } catch (error) {
      console.log("error", JSON.stringify(error));
    }
    return resultUrl;
  };
  function download(info) {
    const videoInfo = {
      videoWidth: info.videoWidth, //帧宽
      videoHeight: info.videoHeight, //帧高
      type: info.type, //视频格式
      size: info.size, //视频大小
      duration: info.duration, //视频时长
      url: info.url, //资源地址
    };
    let sniffInfo = {
      name: info.title, //视频名称
      img: info.imgUrl, //格式：base64、url
      encryptionType: "", //加密方式 后续可能扩展
      hasResources: info.url ? true : false, //是否探测到资源
      videoList: [
        //资源列表
      ],
    };
    sniffInfo.videoList.push(videoInfo);
    sniffInfo = JSON.stringify([sniffInfo]);
    try {
      window.SniffWebViewJs.setJsMedia(sniffInfo);
    } catch (error) {
      checkStepPoin(2, JSON.stringify(error));
    }
    clickBuriedPoint(info.url ? 1 : 0, info.url);
  }
  function locationChange() {
    const observer = new MutationObserver((mutations) => {
      mutations.forEach(() => {
        if (currentUrl !== document.location.href) {
          currentUrl = document.location.href;
          window.addEventListener("DOMContentLoaded", () => {
            console.log("dom 加载完成");
          });
          setTimeout(() => {
            checkAllVideo();
          }, 500);
        }
      });
    });
    const target = document.querySelector("body");
    const config = {
      childList: true,
      subtree: true,
    };
    observer.observe(target, config);
  }

  window.getNativeParams = function () {
    // if (params.latestDownSign) {
    window["latestDownSign"] = 1;
    try {
      if (groupIdUrls[currentGroupId] || getUrlByUserName()) {
        document
          .querySelector(".swiper-slide-active")
          .querySelector(".download-set").style.display = "block";
      }
    } catch (error) {}
    // }
  };

  function listen() {
    const origin = {
      open: XMLHttpRequest.prototype.open,
    };
    XMLHttpRequest.prototype.open = function (a, b) {
      this.addEventListener("loadstart", replaceFn);
      origin.open.apply(this, arguments);
    };
    function replaceFn() {
      try {
        if (this._byted_url.indexOf("tiktok.com/v1/list") !== -1) {
          if (
            this.r.indexOf("https://v19-webapp-prime") !== -1 ||
            this.r.indexOf("group_id") !== -1
          ) {
            const events = JSON.parse(this.r)[0].events;
            for (const element of events) {
              const param = JSON.parse(element["params"]);
              if (param.group_id && param.play_url) {
                groupIdUrls[param.group_id] = param.play_url;
                // console.log("groupIdUrls", groupIdUrls);
              }
              if (element.event === "download_app_notify") {
                currentGroupId = param.group_id;
                // console.log("currentGroupId", currentGroupId);
                // console.log("current_url", groupIdUrls[currentGroupId]);
              }
            }

            if (groupIdUrls[currentGroupId] && window["latestDownSign"]) {
              document
                .querySelector(".swiper-slide-active")
                .querySelector(".download-set").style.display = "block";
            }
          }
          // console.log('监听', this)
        }
      } catch (error) {
        console.log(JSON.stringify(error));
      }
    }
  }
  if (location.href.indexOf("tiktok.com") > -1) {
    listen();
  }
  window.onresize = () => {
    if (window.matchMedia("(min-width: 600px)").matches) {
      if (
        document.getElementsByClassName("download-set")[0].dataset["size"] == 1
      ) {
        return;
      }
      document.getElementsByClassName("download-set")[0].dataset["size"] = 1;
      var style = document.createElement("style");
      style.type = "text/css";
      style.innerHTML = `
      .download-set, .animation-btn, .animation-btn svg {
        width: 60px!important;
        height: 60px!important;
      }
      .animation-arrow {
        margin-left: -30px;
        margin-top: -30px;
      }
      `;
      window.document.head.appendChild(style);
    } else {
      if (
        document.getElementsByClassName("download-set")[0].dataset["size"] == 2
      ) {
        return;
      }
      document.getElementsByClassName("download-set")[0].dataset["size"] = 2;
      var style = document.createElement("style");
      style.type = "text/css";
      style.innerHTML = `
      .download-set, .animation-btn, .animation-btn svg {
        width: 15.5vw!important;
        height: 15.5vw!important;
      }
      .animation-arrow {
        margin-left: -7.25vw;
        margin-top: -7.25vw;
      }
      `;
      window.document.head.appendChild(style);
    }
  };
})();
