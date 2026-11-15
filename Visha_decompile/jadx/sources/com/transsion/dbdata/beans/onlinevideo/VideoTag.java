package com.transsion.dbdata.beans.onlinevideo;

import com.google.gson.annotations.SerializedName;
import java.util.HashSet;
import java.util.Map;

public class VideoTag extends TypeBean {
    public static final int ALL_ID = 0;
    public boolean needHide;

    @SerializedName("pay_type")
    public int payType;

    @SerializedName("tag_id")
    public long tagId;

    @SerializedName("name")
    public String tagName;

    @SerializedName("tag_relation")
    public Map<String, HashSet<Long>> tagRelation;

    @SerializedName("tag_type")
    public int tagType;

    public int getPayType() {
        return this.payType;
    }

    public long getTagId() {
        return this.tagId;
    }

    public String getTagName() {
        return this.tagName;
    }

    public Map<String, HashSet<Long>> getTagRelation() {
        return this.tagRelation;
    }

    public int getTagType() {
        return this.tagType;
    }

    public boolean isAllTag() {
        return this.tagId == 0;
    }

    public boolean isHot() {
        return this.payType == 2;
    }

    public boolean isNeedHide() {
        return this.needHide;
    }

    public boolean isNew() {
        return this.payType == 1;
    }

    public boolean isSpacialType() {
        return this.tagType == 6;
    }

    public void setNeedHide(boolean z) {
        this.needHide = z;
    }

    public void setPayType(int i) {
        this.payType = i;
    }

    public void setTagId(long j) {
        this.tagId = j;
    }

    public void setTagName(String str) {
        this.tagName = str;
    }

    public void setTagRelation(Map<String, HashSet<Long>> map) {
        this.tagRelation = map;
    }

    public void setTagType(int i) {
        this.tagType = i;
    }

    public String toString() {
        return "VideoTag{tagId=" + this.tagId + ", tagName='" + this.tagName + "', tagType=" + this.tagType + ", payType=" + this.payType + ", needHide=" + this.needHide + '}';
    }
}
