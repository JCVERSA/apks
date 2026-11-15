package com.transsion.dbdata.beans.sniff;

import com.google.gson.annotations.SerializedName;

public class StartAdGuide {

    @SerializedName("activate_type")
    private int activateType;

    @SerializedName("days")
    private int days;

    @SerializedName("duration")
    private long duration;

    @SerializedName("online_time")
    private String onlineTime;

    @SerializedName("pic_url")
    private String picUrl;

    @SerializedName("time")
    private int time;

    public StartAdGuide(int i, int i2, String str, int i3, long j, String str2) {
        this.days = i;
        this.time = i2;
        this.picUrl = str;
        this.activateType = i3;
        this.duration = j;
        this.onlineTime = str2;
    }

    public int getActivateType() {
        return this.activateType;
    }

    public int getDays() {
        return this.days;
    }

    public long getDuration() {
        return this.duration;
    }

    public String getOnlineTime() {
        return this.onlineTime;
    }

    public String getPicUrl() {
        return this.picUrl;
    }

    public int getTime() {
        return this.time;
    }

    public void setActivateType(int i) {
        this.activateType = i;
    }

    public void setDays(int i) {
        this.days = i;
    }

    public void setDuration(long j) {
        this.duration = j;
    }

    public void setOnlineTime(String str) {
        this.onlineTime = str;
    }

    public void setPicUrl(String str) {
        this.picUrl = str;
    }

    public void setTime(int i) {
        this.time = i;
    }
}
