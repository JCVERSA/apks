package com.transsion.dbdata.beans.adsbean;

import androidx.annotation.NonNull;
import com.google.gson.annotations.SerializedName;
import java.util.List;

public class AdsDataBean {

    @SerializedName("activateType")
    int activateType;

    @SerializedName("audioBannerList")
    List<AdItemBean> audioBannerList;

    @SerializedName("intervalCount")
    int intervalCount;

    @SerializedName("launchScreenList")
    List<AdItemBean> launchScreenList;

    @SerializedName("time")
    int time;

    @SerializedName("videoBannerList")
    List<AdItemBean> videoBannerList;

    @SerializedName("videoIconList")
    List<AdItemBean> videoIconList;

    public int getActivateType() {
        return this.activateType;
    }

    public List<AdItemBean> getAudioBannerList() {
        return this.audioBannerList;
    }

    public int getIntervalCount() {
        return this.intervalCount;
    }

    public List<AdItemBean> getLaunchScreenList() {
        return this.launchScreenList;
    }

    public int getTime() {
        return this.time;
    }

    public List<AdItemBean> getVideoBannerList() {
        return this.videoBannerList;
    }

    public List<AdItemBean> getVideoIconList() {
        return this.videoIconList;
    }

    public void setIntervalCount(int i) {
        this.intervalCount = i;
    }

    public void setTime(int i) {
        this.time = i;
    }

    @NonNull
    public String toString() {
        return "AdData{time='" + this.time + "', intervalCount='" + this.intervalCount + "', activateType='" + this.activateType + "', launchScreenList=" + this.launchScreenList + ", videoBannerList=" + this.videoBannerList + ", audioBannerList=" + this.audioBannerList + ", videoIconList=" + this.videoIconList + '}';
    }
}
