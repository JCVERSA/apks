package com.mgtv.ssp.auth;

public class EntranceInfo {
    private String contentId;
    private String rendType;
    private String token;
    private String type;
    private String videoId;

    public String getContentId() {
        return this.contentId;
    }

    public String getRendType() {
        return this.rendType;
    }

    public String getToken() {
        return "";
    }

    public String getType() {
        return this.type;
    }

    public String getVideoId() {
        return this.videoId;
    }

    public void setContentId(String str) {
        this.contentId = str;
    }

    public void setRendType(String str) {
        this.rendType = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setVideoId(String str) {
        this.videoId = str;
    }
}
