package com.transsion.dbdata.beans.onlinevideo;

import com.google.gson.annotations.SerializedName;
import defpackage.hb0;
import java.util.List;

public class WebcastSerialBean extends TypeBean {

    @SerializedName("cover_x")
    private String coverX;

    @SerializedName("cover_y")
    private String coverY;

    @SerializedName("definitions")
    private List<?> definitions;

    @SerializedName("duration")
    private Integer duration;

    @SerializedName("is_intact")
    private Integer isIntact;

    @SerializedName("pay_type")
    private Integer payType;

    @SerializedName("play_start_time")
    private Object playStartTime;

    @SerializedName("serial_id")
    private Integer serialId;

    @SerializedName("serial_no")
    private Integer serialNo;

    @SerializedName("serial_title")
    private String serialTitle;

    @SerializedName("series_id")
    private Object seriesId;

    @SerializedName(hb0.KEY_NAME_VK_SOURCE_ID)
    private String sourceId;

    @SerializedName("update_at")
    private Object updateAt;

    @SerializedName("video_id")
    private long videoId;

    @SerializedName("video_link")
    private String videoLink;

    public String getCoverX() {
        return this.coverX;
    }

    public String getCoverY() {
        return this.coverY;
    }

    public List<?> getDefinitions() {
        return this.definitions;
    }

    public Integer getDuration() {
        return this.duration;
    }

    public Integer getIsIntact() {
        return this.isIntact;
    }

    public Integer getPayType() {
        return this.payType;
    }

    public Object getPlayStartTime() {
        return this.playStartTime;
    }

    public Integer getSerialId() {
        return this.serialId;
    }

    public Integer getSerialNo() {
        return this.serialNo;
    }

    public String getSerialTitle() {
        return this.serialTitle;
    }

    public Object getSeriesId() {
        return this.seriesId;
    }

    public String getSourceId() {
        return this.sourceId;
    }

    public Object getUpdateAt() {
        return this.updateAt;
    }

    public long getVideoId() {
        return this.videoId;
    }

    public String getVideoLink() {
        return this.videoLink;
    }

    public boolean isVip() {
        return this.payType.intValue() == 1;
    }

    public void setCoverX(String str) {
        this.coverX = str;
    }

    public void setCoverY(String str) {
        this.coverY = str;
    }

    public void setDefinitions(List<?> list) {
        this.definitions = list;
    }

    public void setDuration(Integer num) {
        this.duration = num;
    }

    public void setIsIntact(Integer num) {
        this.isIntact = num;
    }

    public void setPayType(Integer num) {
        this.payType = num;
    }

    public void setPlayStartTime(Object obj) {
        this.playStartTime = obj;
    }

    public void setSerialId(Integer num) {
        this.serialId = num;
    }

    public void setSerialNo(Integer num) {
        this.serialNo = num;
    }

    public void setSerialTitle(String str) {
        this.serialTitle = str;
    }

    public void setSeriesId(Object obj) {
        this.seriesId = obj;
    }

    public void setSourceId(String str) {
        this.sourceId = str;
    }

    public void setUpdateAt(Object obj) {
        this.updateAt = obj;
    }

    public void setVideoId(long j) {
        this.videoId = j;
    }

    public void setVideoLink(String str) {
        this.videoLink = str;
    }
}
