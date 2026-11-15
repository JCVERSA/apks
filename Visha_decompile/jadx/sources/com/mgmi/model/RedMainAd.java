package com.mgmi.model;

public class RedMainAd extends VASTAd {
    private String channelId;
    private String countDownId;
    private int nt;
    private String rainId;

    @Override
    public String getChannelId() {
        return this.channelId;
    }

    @Override
    public String getCountDownId() {
        return this.countDownId;
    }

    @Override
    public long getNt() {
        return this.nt;
    }

    @Override
    public String getRainId() {
        return this.rainId;
    }

    @Override
    public void setChannelId(String str) {
        this.channelId = str;
    }

    @Override
    public void setCountDownId(String str) {
        this.countDownId = str;
    }

    public void setNt(int i) {
        this.nt = i;
    }

    @Override
    public void setRainId(String str) {
        this.rainId = str;
    }
}
