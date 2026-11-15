package com.mgtv.ssp.play.playsdk;

public final class PlayerAdInfo {
    public String adButtonName;
    public int adDuration;
    public String adTag;
    public int adVideoHeight;
    public int adVideoWidth;
    public boolean canPause;
    public boolean isTrueViewAd;
    public int trueViewDuration;
    public String url;
    private String vipText;

    public PlayerAdInfo() {
    }

    public String getAdButtonName() {
        return this.adButtonName;
    }

    public int getAdDuration() {
        return this.adDuration;
    }

    public String getAdTag() {
        return this.adTag;
    }

    public int getAdVideoHeight() {
        return this.adVideoHeight;
    }

    public int getAdVideoWidth() {
        return this.adVideoWidth;
    }

    public int getTrueViewDuration() {
        return this.trueViewDuration;
    }

    public String getUrl() {
        return this.url;
    }

    public String getVipText() {
        return this.vipText;
    }

    public boolean isCanPause() {
        return this.canPause;
    }

    public boolean isTrueViewAd() {
        return this.isTrueViewAd;
    }

    public void setAdButtonName(String str) {
        this.adButtonName = str;
    }

    public void setAdDuration(int i) {
        this.adDuration = i;
    }

    public void setAdTag(String str) {
        this.adTag = str;
    }

    public void setAdVideoHeight(int i) {
        this.adVideoHeight = i;
    }

    public void setAdVideoWidth(int i) {
        this.adVideoWidth = i;
    }

    public void setCanPause(boolean z) {
        this.canPause = z;
    }

    public void setTrueViewAd(boolean z) {
        this.isTrueViewAd = z;
    }

    public void setTrueViewDuration(int i) {
        this.trueViewDuration = i;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setVipText(String str) {
        this.vipText = str;
    }

    public PlayerAdInfo(String str, String str2) {
        this.vipText = str;
        this.adTag = str2;
    }
}
