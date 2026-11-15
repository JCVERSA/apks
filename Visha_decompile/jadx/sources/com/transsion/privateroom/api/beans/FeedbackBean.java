package com.transsion.privateroom.api.beans;

import com.google.gson.annotations.SerializedName;
import defpackage.hb0;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

public class FeedbackBean {

    @SerializedName("android_version")
    private String androidVersion;

    @SerializedName("app_version")
    private String appVersion;

    @SerializedName("feedback_type_id")
    private Integer feedbackTypeId;

    @SerializedName(CommonUrlParts.MODEL)
    private String model;

    @SerializedName("module_id")
    private Integer moduleId;

    @SerializedName("open_id")
    private Integer openId;

    @SerializedName("problem_describe")
    private String problemDescribe;

    @SerializedName("problem_type_id")
    private Integer problemTypeId;

    @SerializedName(hb0.KEY_NAME_REGION_ID)
    private Integer regionId;

    @SerializedName("region_name")
    private String regionName;

    @SerializedName("remark")
    private String remark;

    @SerializedName("source")
    private Integer source;

    public String getAndroidVersion() {
        return this.androidVersion;
    }

    public String getAppVersion() {
        return this.appVersion;
    }

    public Integer getFeedbackTypeId() {
        return this.feedbackTypeId;
    }

    public String getModel() {
        return this.model;
    }

    public Integer getModuleId() {
        return this.moduleId;
    }

    public Integer getOpenId() {
        return this.openId;
    }

    public String getProblemDescribe() {
        return this.problemDescribe;
    }

    public Integer getProblemTypeId() {
        return this.problemTypeId;
    }

    public Integer getRegionId() {
        return this.regionId;
    }

    public String getRegionName() {
        return this.regionName;
    }

    public String getRemark() {
        return this.remark;
    }

    public Integer getSource() {
        return this.source;
    }

    public void setAndroidVersion(String str) {
        this.androidVersion = str;
    }

    public void setAppVersion(String str) {
        this.appVersion = str;
    }

    public void setFeedbackTypeId(Integer num) {
        this.feedbackTypeId = num;
    }

    public void setModel(String str) {
        this.model = str;
    }

    public void setModuleId(Integer num) {
        this.moduleId = num;
    }

    public void setOpenId(Integer num) {
        this.openId = num;
    }

    public void setProblemDescribe(String str) {
        this.problemDescribe = str;
    }

    public void setProblemTypeId(Integer num) {
        this.problemTypeId = num;
    }

    public void setRegionId(Integer num) {
        this.regionId = num;
    }

    public void setRegionName(String str) {
        this.regionName = str;
    }

    public void setRemark(String str) {
        this.remark = str;
    }

    public void setSource(Integer num) {
        this.source = num;
    }
}
