package com.transsion.dbdata.beans.sniff;

import androidx.annotation.NonNull;
import defpackage.r0a;

public class VideoFileInfoBean {
    double duration;
    String resolution;
    long size;
    String type;
    String url;
    int videoHeight;
    int videoWidth;

    public enum ENUM_VIDEO_RESOLUTION {
        VIDEO_RESOLUTION_1080P("1080P"),
        VIDEO_RESOLUTION_720P("720P"),
        VIDEO_RESOLUTION_480P("480P"),
        VIDEO_RESOLUTION_SD("SD");

        public String value;

        ENUM_VIDEO_RESOLUTION(String str) {
            this.value = str;
        }
    }

    public double getDuration() {
        return this.duration;
    }

    public String getResolution() {
        return this.resolution;
    }

    public long getSize() {
        return this.size;
    }

    public String getType() {
        if (!r0a.g(this.type)) {
            return this.type.toUpperCase();
        }
        if (!r0a.g(this.url)) {
            String str = this.url;
            String strSubstring = str.substring(str.lastIndexOf(46) + 1);
            this.type = strSubstring;
            if (!r0a.g(strSubstring)) {
                int iIndexOf = this.type.indexOf(63);
                if (iIndexOf != -1) {
                    this.type = this.type.substring(0, iIndexOf);
                }
                int iIndexOf2 = this.type.indexOf(35);
                if (iIndexOf2 != -1) {
                    this.type = this.type.substring(0, iIndexOf2);
                }
            }
        }
        if (r0a.g(this.type)) {
            this.type = "MP4";
        }
        return this.type.toUpperCase();
    }

    public String getUrl() {
        return this.url;
    }

    public int getVideoHeight() {
        return this.videoHeight;
    }

    public String getVideoResolution() {
        String str = ENUM_VIDEO_RESOLUTION.VIDEO_RESOLUTION_SD.value;
        int i = this.videoHeight;
        if (i >= 1080) {
            return ENUM_VIDEO_RESOLUTION.VIDEO_RESOLUTION_1080P.value;
        }
        if (i >= 720) {
            return ENUM_VIDEO_RESOLUTION.VIDEO_RESOLUTION_720P.value;
        }
        return i >= 480 ? ENUM_VIDEO_RESOLUTION.VIDEO_RESOLUTION_480P.value : str;
    }

    public int getVideoWidth() {
        return this.videoWidth;
    }

    public void setDuration(long j) {
        this.duration = j;
    }

    public void setResolution(String str) {
        this.resolution = str;
    }

    public void setSize(long j) {
        this.size = j;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setVideoHeight(int i) {
        this.videoHeight = i;
    }

    public void setVideoWidth(int i) {
        this.videoWidth = i;
    }

    @NonNull
    public String toString() {
        return "VideoFileInfo{videoWidth=" + this.videoWidth + ", videoHeight=" + this.videoHeight + ", size=" + this.size + ", duration=" + this.duration + ", resolution=" + getVideoResolution() + ", url='" + this.url + "', type='" + this.type + "'}";
    }
}
