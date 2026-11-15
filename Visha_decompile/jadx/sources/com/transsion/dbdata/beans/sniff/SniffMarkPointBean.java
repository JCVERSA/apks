package com.transsion.dbdata.beans.sniff;

import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.google.gson.annotations.SerializedName;
import com.hisavana.common.tracking.TrackingKey;
import defpackage.hb0;

public class SniffMarkPointBean {

    @SerializedName("buried_poin_params")
    private MarkPointParams markPointParams;

    @SerializedName("tid")
    private Long tid = 0L;

    @SerializedName("event_name")
    private String event_name = "";

    public static class Builder {
        private Long tid = 0L;
        private String event_name = "";
        private Integer status = 0;
        private Integer errorCode = 0;
        private Integer duration = 0;
        private String mainUrl = "";
        private String videoUrl = "";
        private String js_type = "";
        private String domain_name = "";
        private int code = 0;
        private int type = 1;
        private String msg = "";
        private String script_url = "";

        public SniffMarkPointBean Build() {
            SniffMarkPointBean sniffMarkPointBean = new SniffMarkPointBean();
            sniffMarkPointBean.setTid(this.tid);
            sniffMarkPointBean.setEvent_name(this.event_name);
            MarkPointParams markPointParams = new MarkPointParams();
            markPointParams.setErrorCode(this.errorCode);
            markPointParams.setMainUrl(this.mainUrl);
            markPointParams.setVideoUrl(this.videoUrl);
            markPointParams.setStatus(this.status);
            markPointParams.setJs_type(this.js_type);
            markPointParams.setDomain_name(this.domain_name);
            markPointParams.setDuration(this.duration.intValue());
            markPointParams.setCode(Integer.valueOf(this.code));
            markPointParams.setMsg(this.msg);
            markPointParams.setType(Integer.valueOf(this.type));
            sniffMarkPointBean.setMarkPointParams(markPointParams);
            return sniffMarkPointBean;
        }

        public int getCode() {
            return this.code;
        }

        public Builder setCode(int i) {
            this.code = i;
            return this;
        }

        public Builder setDomainName(String str) {
            this.domain_name = str;
            return this;
        }

        public Builder setDuration(int i) {
            this.duration = Integer.valueOf(i);
            return this;
        }

        public Builder setErrorCode(Integer num) {
            this.errorCode = num;
            return this;
        }

        public Builder setEventName(String str) {
            this.event_name = str;
            return this;
        }

        public Builder setJsType(String str) {
            this.js_type = str;
            return this;
        }

        public Builder setMainUrl(String str) {
            this.mainUrl = str;
            return this;
        }

        public Builder setMsg(String str) {
            this.msg = str;
            return this;
        }

        public Builder setScriptUrl(String str) {
            this.script_url = str;
            return this;
        }

        public Builder setStatus(int i) {
            this.status = Integer.valueOf(i);
            return this;
        }

        public Builder setTid(Long l) {
            this.tid = l;
            return this;
        }

        public Builder setVideoUrl(String str) {
            this.videoUrl = str;
            return this;
        }
    }

    public static class MarkPointParams {

        @SerializedName("status")
        private Integer status = 0;

        @SerializedName("error_code")
        private Integer errorCode = 0;

        @SerializedName(hb0.KEY_NAME_MAINURL)
        private String mainUrl = "";

        @SerializedName("video_url")
        private String videoUrl = "";

        @SerializedName("js_type")
        private String js_type = "";

        @SerializedName("domain_name")
        private String domain_name = "";

        @SerializedName("duration")
        private int duration = 0;

        @SerializedName(TrackingKey.CODE)
        private Integer code = 0;

        @SerializedName("type")
        private Integer type = 1;

        @SerializedName(NotificationCompat.CATEGORY_MESSAGE)
        private String msg = "";

        @SerializedName("script_url")
        private String script_url = "";

        public Integer getCode() {
            return this.code;
        }

        public String getDomain_name() {
            return this.domain_name;
        }

        public int getDuration() {
            return this.duration;
        }

        public Integer getErrorCode() {
            return this.errorCode;
        }

        public String getJs_type() {
            return this.js_type;
        }

        public String getMainUrl() {
            return this.mainUrl;
        }

        public String getMsg() {
            return this.msg;
        }

        public String getScript_url() {
            return this.script_url;
        }

        public Integer getStatus() {
            return this.status;
        }

        public Integer getType() {
            return this.type;
        }

        public String getVideoUrl() {
            return this.videoUrl;
        }

        public void setCode(Integer num) {
            this.code = num;
        }

        public void setDomain_name(String str) {
            this.domain_name = str;
        }

        public void setDuration(int i) {
            this.duration = i;
        }

        public void setErrorCode(Integer num) {
            this.errorCode = num;
        }

        public void setJs_type(String str) {
            this.js_type = str;
        }

        public void setMainUrl(String str) {
            this.mainUrl = str;
        }

        public void setMsg(String str) {
            this.msg = str;
        }

        public void setScript_url(String str) {
            this.script_url = str;
        }

        public void setStatus(Integer num) {
            this.status = num;
        }

        public void setType(Integer num) {
            this.type = num;
        }

        public void setVideoUrl(String str) {
            this.videoUrl = str;
        }

        @NonNull
        public String toString() {
            return "MarkPointParams{status=" + this.status + ", errorCode=" + this.errorCode + ", mainUrl='" + this.mainUrl + "', videoUrl='" + this.videoUrl + "', js_type='" + this.js_type + "', domain_name='" + this.domain_name + "', duration=" + this.duration + ", code=" + this.code + ", type=" + this.type + ", msg='" + this.msg + "'}";
        }
    }

    public String getEvent_name() {
        return this.event_name;
    }

    public MarkPointParams getMarkPointParams() {
        return this.markPointParams;
    }

    public Long getTid() {
        return this.tid;
    }

    public void setEvent_name(String str) {
        this.event_name = str;
    }

    public void setMarkPointParams(MarkPointParams markPointParams) {
        this.markPointParams = markPointParams;
    }

    public void setTid(Long l) {
        this.tid = l;
    }

    @NonNull
    public String toString() {
        return "SniffMarkPointBean{tid=" + this.tid + ", event_name='" + this.event_name + "', markPointParams=" + this.markPointParams + '}';
    }
}
