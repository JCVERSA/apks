package com.transsion.vishaplayersdk.gsyplayer.model;

public class GSYVideoModel {
    private String mTitle;
    private String mUrl;

    public GSYVideoModel(String str, String str2) {
        this.mUrl = str;
        this.mTitle = str2;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public String getUrl() {
        return this.mUrl;
    }

    public void setTitle(String str) {
        this.mTitle = str;
    }

    public void setUrl(String str) {
        this.mUrl = str;
    }
}
