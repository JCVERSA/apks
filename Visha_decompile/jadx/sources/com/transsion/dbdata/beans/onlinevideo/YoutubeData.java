package com.transsion.dbdata.beans.onlinevideo;

import com.google.gson.annotations.SerializedName;
import defpackage.hb0;
import java.util.List;

public class YoutubeData extends TypeBean {

    @SerializedName("continuation")
    private String continuation;

    @SerializedName("results")
    private List<Results> results;

    public static class Results extends TypeBean {

        @SerializedName("channel_info")
        private ChannelInfo channelInfo;

        @SerializedName("description")
        private String description;

        @SerializedName("length_text")
        private String lengthText;

        @SerializedName("published_time_text")
        private String publishedTimeText;

        @SerializedName(hb0.KEY_NAME_VK_SOURCE_ID)
        private String sourceId;

        @SerializedName("source_type")
        private Integer sourceType;

        @SerializedName("thumbnails")
        private List<Thumbnails> thumbnails;

        @SerializedName("title")
        private String title;

        @SerializedName("view_count_text")
        private String viewCountText;

        public static class ChannelInfo extends TypeBean {

            @SerializedName("channel_id")
            private String channelId;

            @SerializedName("channel_name")
            private String channelName;

            @SerializedName("thumbnails")
            private List<Thumbnails> thumbnails;

            public String getChannelId() {
                return this.channelId;
            }

            public String getChannelName() {
                return this.channelName;
            }

            public List<Thumbnails> getThumbnails() {
                return this.thumbnails;
            }

            public void setChannelId(String str) {
                this.channelId = str;
            }

            public void setChannelName(String str) {
                this.channelName = str;
            }

            public void setThumbnails(List<Thumbnails> list) {
                this.thumbnails = list;
            }
        }

        public ChannelInfo getChannelInfo() {
            return this.channelInfo;
        }

        public String getDescription() {
            return this.description;
        }

        public String getLengthText() {
            return this.lengthText;
        }

        public String getPublishedTimeText() {
            return this.publishedTimeText;
        }

        public String getSourceId() {
            return this.sourceId;
        }

        public Integer getSourceType() {
            return this.sourceType;
        }

        public List<Thumbnails> getThumbnails() {
            return this.thumbnails;
        }

        public String getTitle() {
            return this.title;
        }

        public String getViewCountText() {
            return this.viewCountText;
        }

        public void setChannelInfo(ChannelInfo channelInfo) {
            this.channelInfo = channelInfo;
        }

        public void setDescription(String str) {
            this.description = str;
        }

        public void setLengthText(String str) {
            this.lengthText = str;
        }

        public void setPublishedTimeText(String str) {
            this.publishedTimeText = str;
        }

        public void setSourceId(String str) {
            this.sourceId = str;
        }

        public void setSourceType(Integer num) {
            this.sourceType = num;
        }

        public void setThumbnails(List<Thumbnails> list) {
            this.thumbnails = list;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setViewCountText(String str) {
            this.viewCountText = str;
        }
    }

    public String getContinuation() {
        return this.continuation;
    }

    public List<Results> getResults() {
        return this.results;
    }

    public void setContinuation(String str) {
        this.continuation = str;
    }

    public void setResults(List<Results> list) {
        this.results = list;
    }
}
