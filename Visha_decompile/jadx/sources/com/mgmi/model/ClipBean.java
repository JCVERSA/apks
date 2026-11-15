package com.mgmi.model;

import java.io.Serializable;

public class ClipBean implements com.mgadplus.netlib.json.a, Serializable {
    public long clipId;
    public String clipName;
    public String imgurl2;
    public String yearShow;

    public long getClipId() {
        return this.clipId;
    }

    public String getClipName() {
        return this.clipName;
    }

    public String getImgurl2() {
        return this.imgurl2;
    }

    public String getYearShow() {
        return this.yearShow;
    }

    public void setClipId(long j) {
        this.clipId = j;
    }

    public void setClipName(String str) {
        this.clipName = str;
    }

    public void setImgurl2(String str) {
        this.imgurl2 = str;
    }

    public void setYearShow(String str) {
        this.yearShow = str;
    }
}
