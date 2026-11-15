package com.transsion.dbdata.beans.appconfig;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.gson.annotations.SerializedName;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.beans.onlinevideo.TypeBean;

public class BannerBean extends TypeBean {

    @SerializedName("banner_id")
    private Integer bannerId;

    @SerializedName("cover")
    private String cover;

    @SerializedName("description")
    private String description;

    @SerializedName("online_end_time")
    private long onlineEndTime;

    @SerializedName("online_end_week")
    private Integer onlineEndWeek;

    @SerializedName("online_start_time")
    private long onlineStartTime;

    @SerializedName("online_start_week")
    private Integer onlineStartWeek;

    @SerializedName("online_week")
    private String onlineWeek;

    @SerializedName("param")
    private String param;

    @SerializedName("short_describe")
    private String shortDescribe;

    @SerializedName("sort")
    private Integer sort;

    @SerializedName("source")
    private Integer source;

    @SerializedName(TypedValues.AttributesType.S_TARGET)
    private RouterBean target;

    @SerializedName("title")
    private String title;

    @SerializedName("topic_id")
    private Integer topicId;

    public Integer getBannerId() {
        return this.bannerId;
    }

    public String getCover() {
        return this.cover;
    }

    public String getDescription() {
        return this.description;
    }

    public long getOnlineEndTime() {
        return this.onlineEndTime;
    }

    public Integer getOnlineEndWeek() {
        return this.onlineEndWeek;
    }

    public long getOnlineStartTime() {
        return this.onlineStartTime;
    }

    public Integer getOnlineStartWeek() {
        return this.onlineStartWeek;
    }

    public String getOnlineWeek() {
        return this.onlineWeek;
    }

    public String getShortDescribe() {
        return this.shortDescribe;
    }

    public Integer getSort() {
        return this.sort;
    }

    public Integer getSource() {
        return this.source;
    }

    public RouterBean getTarget() {
        return this.target;
    }

    public String getTitle() {
        return this.title;
    }

    public Integer getTopicId() {
        return this.topicId;
    }

    public void setBannerId(Integer num) {
        this.bannerId = num;
    }

    public void setCover(String str) {
        this.cover = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setOnlineEndTime(long j) {
        this.onlineEndTime = j;
    }

    public void setOnlineEndWeek(Integer num) {
        this.onlineEndWeek = num;
    }

    public void setOnlineStartTime(long j) {
        this.onlineStartTime = j;
    }

    public void setOnlineStartWeek(Integer num) {
        this.onlineStartWeek = num;
    }

    public void setOnlineWeek(String str) {
        this.onlineWeek = str;
    }

    public void setShortDescribe(String str) {
        this.shortDescribe = str;
    }

    public void setSort(Integer num) {
        this.sort = num;
    }

    public void setSource(Integer num) {
        this.source = num;
    }

    public void setTarget(RouterBean routerBean) {
        this.target = routerBean;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTopicId(Integer num) {
        this.topicId = num;
    }
}
