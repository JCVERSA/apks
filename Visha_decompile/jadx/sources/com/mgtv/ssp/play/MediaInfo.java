package com.mgtv.ssp.play;

public class MediaInfo {
    public String contentId;
    public String from = "";
    public String liveId;
    public String token;
    public String videoId;

    public MediaInfo() {
    }

    public MediaInfo(String str) {
        this.contentId = str;
    }
}
