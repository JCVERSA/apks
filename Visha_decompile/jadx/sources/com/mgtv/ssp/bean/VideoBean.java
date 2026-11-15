package com.mgtv.ssp.bean;

import com.mgtv.json.JsonInterface;

public class VideoBean implements JsonInterface {
    private AdBean ad;
    public boolean isFirstVideo;
    private int type;
    private VideoInfoBean video;

    public AdBean getAd() {
        return this.ad;
    }

    public int getType() {
        return this.type;
    }

    public VideoInfoBean getVideo() {
        return this.video;
    }

    public void setAd(AdBean adBean) {
        this.ad = adBean;
    }

    public void setType(int i) {
        this.type = i;
    }

    public void setVideo(VideoInfoBean videoInfoBean) {
        this.video = videoInfoBean;
    }
}
