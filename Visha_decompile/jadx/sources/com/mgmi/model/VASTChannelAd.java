package com.mgmi.model;

import java.util.List;

public class VASTChannelAd extends VASTAd {
    public static final String AD_DOUBLE_FEED314 = "9000314";
    public static final String AD_DOUBLE_FEED315 = "9000315";
    public static final String AD_DOUBLE_FEED316 = "9000316";
    public static final String AD_FENGCHE = "200050";
    public static final String AD_HORIZONTAL = "200048";
    public static final String AD_HUAXU = "9000167";
    private f downLoadInfoStatus;
    private String id;
    private int mBgColor = 255;

    public int getBgColor() {
        return this.mBgColor;
    }

    public f getDownLoadInfoStatus() {
        return this.downLoadInfoStatus;
    }

    public String getId() {
        return this.id;
    }

    public List<String> getTrackingEventFb() {
        return getTrackingEventFb(null);
    }

    public List<String> getTrackingEventView() {
        return getTrackingEventView(null);
    }

    public void setBgColor(int i) {
        this.mBgColor = i;
    }

    public void setDownLoadInfoStatus(f fVar) {
        this.downLoadInfoStatus = fVar;
    }

    public void setId(String str) {
        this.id = str;
    }

    public List<String> getTrackingEventFb(String str) {
        return getTrackingEventList(str, "fb");
    }

    public List<String> getTrackingEventView(String str) {
        return getTrackingEventList(str, "view");
    }
}
