package com.mgtv.ssp.bean;

import com.google.gson.annotations.SerializedName;
import com.mgtv.json.JsonInterface;
import com.mgtv.ssp.utils.d;

public class VideoInfoBean implements JsonInterface {
    private boolean alreadyExposed = false;

    @SerializedName("clipName")
    private String clipName;

    @SerializedName("duration")
    private int duration;

    @SerializedName("fdParams")
    private String fdParams;

    @SerializedName("hasClip")
    private int hasClip;

    @SerializedName("imgX")
    private String imgX;

    @SerializedName("imgY")
    private String imgY;

    @SerializedName("intactImgX")
    private String intactImgX;

    @SerializedName("intactImgY")
    private String intactImgY;

    @SerializedName("intactSchema")
    private String intactSchema;

    @SerializedName("intactTitle")
    private String intactTitle;

    @SerializedName("intactVcode")
    private String intactVcode;

    @SerializedName("isPay")
    private int isPay;

    @SerializedName("mgDownloadH5")
    private String mgDownloadH5;

    @SerializedName("previewVcode")
    private String previewVcode;

    @SerializedName("releaseTime")
    private String releaseTime;

    @SerializedName("reportH5")
    private String reportH5;

    @SerializedName("schemaHint")
    private int schemaHint;

    @SerializedName("shortType")
    private String shortType;

    @SerializedName("subTitle")
    private String subTitle;

    @SerializedName("title")
    private String title;

    @SerializedName("ugcName")
    private String ugcName;

    @SerializedName("vcode")
    private String vcode;

    @SerializedName("year")
    private String year;

    public String getClipName() {
        return this.clipName;
    }

    public int getDuration() {
        return this.duration;
    }

    public String getFdParams() {
        return this.fdParams;
    }

    public int getHasClip() {
        return this.hasClip;
    }

    public String getImgX() {
        return this.imgX;
    }

    public String getImgY() {
        return this.imgY;
    }

    public String getIntactImgX() {
        return this.intactImgX;
    }

    public String getIntactImgY() {
        return this.intactImgY;
    }

    public String getIntactSchema() {
        return d.a(this.intactSchema, "MG^UNION!2022@");
    }

    public String getIntactSchemaV2() {
        return this.intactSchema;
    }

    public String getIntactTitle() {
        return this.intactTitle;
    }

    public String getIntactVcode() {
        return this.intactVcode;
    }

    public int getIsPay() {
        return this.isPay;
    }

    public String getMgDownloadH5() {
        return this.mgDownloadH5;
    }

    public String getPreviewVcode() {
        return this.previewVcode;
    }

    public String getReleaseTime() {
        return this.releaseTime;
    }

    public String getReportH5() {
        return d.a(this.reportH5, "MG^UNION!2022@").replace("__ABROAD__", com.hunantv.imgo.b.a.b());
    }

    public int getSchemaHint() {
        return this.schemaHint;
    }

    public String getShortType() {
        return this.shortType;
    }

    public String getSubTitle() {
        return this.subTitle;
    }

    public String getTitle() {
        return this.title;
    }

    public String getUgcName() {
        return this.ugcName;
    }

    public String getVcode() {
        return this.vcode;
    }

    public String getYear() {
        return this.year;
    }

    public boolean hasExposed() {
        return this.alreadyExposed;
    }

    public void setClipName(String str) {
        this.clipName = str;
    }

    public void setDuration(int i) {
        this.duration = i;
    }

    public void setExposed() {
        this.alreadyExposed = true;
    }

    public void setFdParams(String str) {
        this.fdParams = str;
    }

    public void setHasClip(int i) {
        this.hasClip = i;
    }

    public void setImgX(String str) {
        this.imgX = str;
    }

    public void setImgY(String str) {
        this.imgY = str;
    }

    public void setIntactImgX(String str) {
        this.intactImgX = str;
    }

    public void setIntactImgY(String str) {
        this.intactImgY = str;
    }

    public void setIntactSchema(String str) {
        this.intactSchema = str;
    }

    public void setIntactTitle(String str) {
        this.intactTitle = str;
    }

    public void setIntactVcode(String str) {
        this.intactVcode = str;
    }

    public void setIsPay(int i) {
        this.isPay = i;
    }

    public void setMgDownloadH5(String str) {
        this.mgDownloadH5 = str;
    }

    public void setPreviewVcode(String str) {
        this.previewVcode = str;
    }

    public void setReleaseTime(String str) {
        this.releaseTime = str;
    }

    public void setReportH5(String str) {
        this.reportH5 = str;
    }

    public void setSchemaHint(int i) {
        this.schemaHint = i;
    }

    public void setShortType(String str) {
        this.shortType = str;
    }

    public void setSubTitle(String str) {
        this.subTitle = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setUgcName(String str) {
        this.ugcName = str;
    }

    public void setVcode(String str) {
        this.vcode = str;
    }

    public void setYear(String str) {
        this.year = str;
    }
}
