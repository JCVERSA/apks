package com.mgmi.net.bean;

import android.os.Parcel;

public class ExSplashAdBean {
    public String jump_type;
    public String jumpid;
    public String jumpkind;
    private long mAdCurrentPosition;
    private String origin;
    public String pageUrl;
    private String title;
    public int transfer;
    private int mErrorCode = 0;
    private String mErrorMsg = "unknown";
    private boolean jumpConfirm = false;

    public ExSplashAdBean() {
    }

    public void build(CustomBootAdBean customBootAdBean) {
        if (customBootAdBean == null) {
            return;
        }
        this.pageUrl = customBootAdBean.getPageUrl();
        this.jumpConfirm = customBootAdBean.getAwayAppType() == com.mgmi.ads.api.d.AWAY_APP_TYPE_YES;
        this.jump_type = customBootAdBean.getJump_type();
        this.origin = customBootAdBean.getAdOrigin();
        this.mErrorCode = customBootAdBean.getErrorCode();
        this.mErrorMsg = customBootAdBean.getErrorMsg();
        this.title = customBootAdBean.getTitleText();
    }

    public long getAdDurationRemain() {
        return this.mAdCurrentPosition;
    }

    public String getAdOrigin() {
        return this.origin;
    }

    public int getErrorCode() {
        return this.mErrorCode;
    }

    public String getErrorMsg() {
        return this.mErrorMsg;
    }

    public String getJump_type() {
        return this.jump_type;
    }

    public String getJumpid() {
        return this.jumpid;
    }

    public String getJumpkind() {
        return this.jumpkind;
    }

    public String getPageUrl() {
        return this.pageUrl;
    }

    public String getTitle() {
        return this.title;
    }

    public int getTransfer() {
        return this.transfer;
    }

    public boolean needJumpConfirm() {
        return this.jumpConfirm;
    }

    public ExSplashAdBean setAdCurrentPosition(long j) {
        this.mAdCurrentPosition = j;
        return this;
    }

    public ExSplashAdBean setErrorCode(int i) {
        this.mErrorCode = i;
        return this;
    }

    public ExSplashAdBean setErrorMsg(String str) {
        this.mErrorMsg = str;
        return this;
    }

    public void setJumpConfirm(boolean z) {
        this.jumpConfirm = z;
    }

    public void setJump_type(String str) {
        this.jump_type = str;
    }

    public void setJumpid(String str) {
        this.jumpid = str;
    }

    public void setJumpkind(String str) {
        this.jumpkind = str;
    }

    public void setOrigin(String str) {
        this.origin = str;
    }

    public void setPageUrl(String str) {
        this.pageUrl = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTransfer(int i) {
        this.transfer = i;
    }

    public ExSplashAdBean(Parcel parcel) {
    }
}
