package com.transsion.dbdata.beans.media;

import android.text.TextUtils;
import defpackage.gw4;

public class SubtitleTrackInfo extends MediaFileInfo implements gw4 {
    public float delayTime;
    public int id;
    public boolean isInnerSubtitle;
    public boolean isSelected;
    public boolean showArrow;
    public int sub_format;
    public int sub_inner_id = -1;
    public String sub_local_lang_to = "none";
    public long time;
    public int track;

    public SubtitleTrackInfo() {
    }

    @Override
    public String displayText() {
        return this.name;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SubtitleTrackInfo)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        SubtitleTrackInfo subtitleTrackInfo = (SubtitleTrackInfo) obj;
        if (TextUtils.isEmpty(this.path)) {
            return TextUtils.isEmpty(this.path) && TextUtils.isEmpty(subtitleTrackInfo.path);
        }
        return this.path.equals(subtitleTrackInfo.path);
    }

    public long getTime() {
        return this.time;
    }

    @Override
    public boolean isCheck() {
        return this.isSelected;
    }

    public boolean isTextType() {
        return this.sub_format != -1;
    }

    @Override
    public void setCheck(boolean z) {
        this.isSelected = z;
    }

    public void setTime(long j) {
        this.time = j;
    }

    public String toString() {
        return "SubtitleTrackInfo{ id:" + this.id + ", sub_inner_id:" + this.sub_inner_id + ", isInnerSubtitle:" + this.isInnerSubtitle + ", subType:" + this.sub_format + ", isSelected:" + this.isSelected + ", track:" + this.track + ", sub_local_lang_to:" + this.sub_local_lang_to + ", name:" + this.name + ", delayTime:" + this.delayTime + ", size:" + this.size + ", path:" + this.path + " }";
    }

    public SubtitleTrackInfo(String str) {
        this.path = str;
    }

    public SubtitleTrackInfo(int i, String str) {
        this.id = i;
        this.path = str;
    }

    public SubtitleTrackInfo(String str, boolean z) {
        this.path = str;
        this.isSelected = z;
    }
}
