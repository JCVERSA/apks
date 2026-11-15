package com.transsion.dbdata.beans.sniff;

import androidx.annotation.NonNull;
import com.google.gson.annotations.SerializedName;
import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.av3;
import java.util.Date;
import java.util.List;

public class SniffResultBean {

    @SerializedName("audio_list")
    private List<Audio> audioList;
    private boolean bAsyncServerTask;
    public String cookie;
    public long date = new Date().getTime();

    @SerializedName("picture_list")
    private List<Picture> pictureList;
    public String requestBody;

    @SerializedName("resource_cover")
    public String resourceCover;

    @SerializedName("resource_desc")
    public String resourceDesc;

    @SerializedName("resource_title")
    public String resourceTitle;

    @SerializedName("sniff_domain")
    public String sniffDomain;

    @NonNull
    @SerializedName("sniff_id")
    public String sniffId;

    @SerializedName("sniff_status")
    public Integer sniffStatus;

    @SerializedName("sniff_type")
    public Integer sniffType;

    @SerializedName(SniffSoucreBean.JSON_KEY_SNIFF_URL)
    public String sniffUrl;
    public String userAgent;

    @SerializedName("video_list")
    private List<Video> videoList;

    public static class Audio {

        @SerializedName("duration")
        private Integer duration;

        @SerializedName("format")
        private Integer format;

        @SerializedName(PlayAudioData.TAG_SIZE)
        private Integer size;

        @SerializedName("url")
        private String url;

        public Integer getDuration() {
            return this.duration;
        }

        public Integer getFormat() {
            return this.format;
        }

        public String getMimeTypeString() {
            if (this.format.intValue() == 1) {
                return "aac";
            }
            return this.format.intValue() == 2 ? "mp3" : "unkonwn";
        }

        public Integer getSize() {
            Integer num = this.size;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public String getUrl() {
            return this.url;
        }

        public void setDuration(Integer num) {
            this.duration = num;
        }

        public void setFormat(Integer num) {
            this.format = num;
        }

        public void setSize(Integer num) {
            this.size = num;
        }

        public void setUrl(String str) {
            this.url = str;
        }

        @NonNull
        public String toString() {
            return "AudioList{format=" + this.format + ", url='" + this.url + "', size=" + this.size + ", duration=" + this.duration + '}';
        }
    }

    public static class Picture {

        @SerializedName("format")
        private Integer format;

        @SerializedName("height")
        private Integer height;

        @SerializedName(PlayAudioData.TAG_SIZE)
        private Integer size;

        @SerializedName("url")
        private String url;

        @SerializedName("width")
        private Integer width;

        public Integer getFormat() {
            return this.format;
        }

        public Integer getHeight() {
            return this.height;
        }

        public String getMimeTypeString() {
            if (this.format.intValue() == 1 || this.format.intValue() == 3) {
                return "jpg";
            }
            return this.format.intValue() == 2 ? "png" : "unkonwn";
        }

        public Integer getSize() {
            Integer num = this.size;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public String getUrl() {
            return this.url;
        }

        public Integer getWidth() {
            return this.width;
        }

        public void setFormat(Integer num) {
            this.format = num;
        }

        public void setHeight(Integer num) {
            this.height = num;
        }

        public void setSize(Integer num) {
            this.size = num;
        }

        public void setUrl(String str) {
            this.url = str;
        }

        public void setWidth(Integer num) {
            this.width = num;
        }

        @NonNull
        public String toString() {
            return "PictureList{format=" + this.format + ", url='" + this.url + "', size=" + this.size + ", width=" + this.width + ", height=" + this.height + '}';
        }
    }

    public static class Video {

        @SerializedName("duration")
        private Integer duration;

        @SerializedName("format")
        private Integer format;

        @SerializedName("height")
        private Integer height;

        @SerializedName(PlayAudioData.TAG_SIZE)
        private Integer size;

        @SerializedName("url")
        private String url;

        @SerializedName("width")
        private Integer width;

        public Integer getDuration() {
            return this.duration;
        }

        public Integer getFormat() {
            return this.format;
        }

        public Integer getHeight() {
            return this.height;
        }

        public String getMimeTypeString() {
            if (this.format.intValue() == 1) {
                return "m3u8";
            }
            return this.format.intValue() == 2 ? "mp4" : "avi";
        }

        public Integer getSize() {
            Integer num = this.size;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public String getUrl() {
            return this.url;
        }

        public Integer getWidth() {
            return this.width;
        }

        public void setDuration(Integer num) {
            this.duration = num;
        }

        public void setFormat(Integer num) {
            this.format = num;
        }

        public void setHeight(Integer num) {
            this.height = num;
        }

        public void setSize(Integer num) {
            this.size = num;
        }

        public void setUrl(String str) {
            this.url = str;
        }

        public void setWidth(Integer num) {
            this.width = num;
        }

        @NonNull
        public String toString() {
            return "VideoList{format=" + this.format + ", url='" + this.url + "', size=" + this.size + ", duration=" + this.duration + ", width=" + this.width + ", height=" + this.height + '}';
        }
    }

    public SniffResultBean(@NonNull String str) {
        this.sniffId = str;
    }

    public void checkName() {
        this.resourceTitle = av3.a(this.resourceTitle);
    }

    public List<Audio> getAudioList() {
        return this.audioList;
    }

    public String getCookie() {
        return this.cookie;
    }

    public List<Picture> getPictureList() {
        return this.pictureList;
    }

    public String getResourceCover() {
        return this.resourceCover;
    }

    public String getResourceDesc() {
        return this.resourceDesc;
    }

    public String getResourceTitle() {
        return this.resourceTitle;
    }

    public String getSniffDomain() {
        return this.sniffDomain;
    }

    public String getSniffId() {
        return this.sniffId;
    }

    public String getSniffRequestBody() {
        return this.requestBody;
    }

    public Integer getSniffStatus() {
        return this.sniffStatus;
    }

    public Integer getSniffType() {
        return this.sniffType;
    }

    public String getSniffUrl() {
        return this.sniffUrl;
    }

    public String getUserAgent() {
        return this.userAgent;
    }

    public List<Video> getVideoList() {
        return this.videoList;
    }

    public boolean isAsyncServerTask() {
        return this.bAsyncServerTask;
    }

    public boolean isSniffMedia() {
        return (this.videoList == null && this.pictureList == null && this.audioList == null) ? false : true;
    }

    public boolean isSniffSuccess() {
        Integer num = this.sniffStatus;
        return num != null && num.intValue() == 0;
    }

    public void setAsyncServerTask(boolean z) {
        this.bAsyncServerTask = z;
    }

    public void setAudioList(List<Audio> list) {
        this.audioList = list;
    }

    public void setCookie(String str) {
        this.cookie = str;
    }

    public void setPictureList(List<Picture> list) {
        this.pictureList = list;
    }

    public void setResourceCover(String str) {
        this.resourceCover = str;
    }

    public void setResourceDesc(String str) {
        this.resourceDesc = str;
    }

    public void setResourceTitle(String str) {
        this.resourceTitle = str;
    }

    public void setSniffDomain(String str) {
        this.sniffDomain = str;
    }

    public void setSniffId(String str) {
        this.sniffId = str;
    }

    public void setSniffRequestBody(String str) {
        this.requestBody = str;
    }

    public void setSniffStatus(Integer num) {
        this.sniffStatus = num;
    }

    public void setSniffType(Integer num) {
        this.sniffType = num;
    }

    public void setSniffUrl(String str) {
        this.sniffUrl = str;
    }

    public void setUserAgent(String str) {
        this.userAgent = str;
    }

    public void setVideoList(List<Video> list) {
        this.videoList = list;
    }

    @NonNull
    public String toString() {
        return "SniffResultBean{date=" + this.date + ", sniffDomain='" + this.sniffDomain + "', sniffUrl='" + this.sniffUrl + "', sniffType=" + this.sniffType + ", sniffId='" + this.sniffId + "', sniffStatus=" + this.sniffStatus + ", resourceTitle='" + this.resourceTitle + "', resourceDesc='" + this.resourceDesc + "', resourceCover='" + this.resourceCover + "', videoList=" + this.videoList + ", audioList=" + this.audioList + ", pictureList=" + this.pictureList + ", cookie='" + this.cookie + "', userAgent='" + this.userAgent + "'}";
    }
}
