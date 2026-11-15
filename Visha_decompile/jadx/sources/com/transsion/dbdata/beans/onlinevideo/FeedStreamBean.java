package com.transsion.dbdata.beans.onlinevideo;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.gson.annotations.SerializedName;
import defpackage.hb0;
import java.util.List;

public class FeedStreamBean extends TypeBean {

    @SerializedName("channel_cover")
    private String channelConver;

    @SerializedName("channel_name")
    private String channelName;

    @SerializedName("end_time")
    private Integer endTime;

    @SerializedName("short_describe")
    private String shortDescribe;

    @SerializedName(hb0.KEY_NAME_VK_SOURCE_ID)
    private String sourceId;

    @SerializedName("start_time")
    private Integer startTime;

    @SerializedName("title")
    private String title;

    @SerializedName("video")
    private VideoBean video;

    @SerializedName("video_id")
    private Integer videoId;

    @SerializedName("video_serial_id")
    private Integer videoSerialId;

    @SerializedName("video_serial_source_id")
    private String videoSerialSourceId;

    public static class VideoBean {

        @SerializedName("actors")
        private String actors;

        @SerializedName("categories")
        private List<VkRecommendBean.CategoryBean> categories;

        @SerializedName("cover_x")
        private String coverX;

        @SerializedName("cover_y")
        private String coverY;

        @SerializedName("created")
        private String created;

        @SerializedName("description")
        private String description;

        @SerializedName("directors")
        private String directors;

        @SerializedName("display_type")
        private Object displayType;

        @SerializedName("duration")
        private Integer duration;

        @SerializedName("finish_status")
        private Integer finishStatus;

        @SerializedName(TtmlNode.ATTR_ID)
        private Integer id;

        @SerializedName("images")
        private List<VkRecommendBean.ImageBean> images;

        @SerializedName("is_live")
        private Integer isLive;

        @SerializedName("keyword")
        private String keyword;

        @SerializedName("language")
        private String language;

        @SerializedName("likes")
        private Long likes;

        @SerializedName("online_status")
        private Integer onlineStatus;

        @SerializedName("online_update_time")
        private Object onlineUpdateTime;

        @SerializedName("pay_type")
        private Integer payType;

        @SerializedName("play_end_time")
        private Object playEndTime;

        @SerializedName("play_start_time")
        private Object playStartTime;

        @SerializedName("price")
        private Integer price;

        @SerializedName("scores")
        private Double scores;

        @SerializedName("serial_count")
        private Integer serialCount;

        @SerializedName("short_describe")
        private String shortDescribe;

        @SerializedName(hb0.KEY_NAME_VK_SOURCE_ID)
        private String sourceId;

        @SerializedName("sourceImage")
        private String sourceImage;

        @SerializedName("source_name")
        private Object sourceName;

        @SerializedName("source_type")
        private Integer sourceType;

        @SerializedName("title")
        private String title;

        @SerializedName("tv_mark")
        private Object tvMark;

        @SerializedName("video_definition_list")
        private Object videoDefinitionList;

        @SerializedName("video_link")
        private Object videoLink;

        @SerializedName("video_serial_list")
        private Object videoSerialList;

        @SerializedName("views")
        private Long views;

        @SerializedName("vkVideoId")
        private String vkVideoId;

        public String getActors() {
            return this.actors;
        }

        public List<VkRecommendBean.CategoryBean> getCategories() {
            return this.categories;
        }

        public String getCoverX() {
            return this.coverX;
        }

        public String getCoverY() {
            return this.coverY;
        }

        public String getCreated() {
            return this.created;
        }

        public String getDescription() {
            return this.description;
        }

        public String getDirectors() {
            return this.directors;
        }

        public Object getDisplayType() {
            return this.displayType;
        }

        public Integer getDuration() {
            return this.duration;
        }

        public Integer getFinishStatus() {
            return this.finishStatus;
        }

        public Integer getId() {
            return this.id;
        }

        public List<VkRecommendBean.ImageBean> getImages() {
            return this.images;
        }

        public Integer getIsLive() {
            return this.isLive;
        }

        public String getKeyword() {
            return this.keyword;
        }

        public String getLanguage() {
            return this.language;
        }

        public Long getLikes() {
            return this.likes;
        }

        public Integer getOnlineStatus() {
            return this.onlineStatus;
        }

        public Object getOnlineUpdateTime() {
            return this.onlineUpdateTime;
        }

        public Integer getPayType() {
            return this.payType;
        }

        public Object getPlayEndTime() {
            return this.playEndTime;
        }

        public Object getPlayStartTime() {
            return this.playStartTime;
        }

        public Integer getPrice() {
            return this.price;
        }

        public Double getScores() {
            return this.scores;
        }

        public Integer getSerialCount() {
            return this.serialCount;
        }

        public String getShortDescribe() {
            return this.shortDescribe;
        }

        public String getSourceId() {
            return this.sourceId;
        }

        public String getSourceImage() {
            return this.sourceImage;
        }

        public Object getSourceName() {
            return this.sourceName;
        }

        public Integer getSourceType() {
            Integer num = this.sourceType;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public String getTitle() {
            return this.title;
        }

        public Object getTvMark() {
            return this.tvMark;
        }

        public Object getVideoDefinitionList() {
            return this.videoDefinitionList;
        }

        public Object getVideoLink() {
            return this.videoLink;
        }

        public Object getVideoSerialList() {
            return this.videoSerialList;
        }

        public Long getViews() {
            return this.views;
        }

        public String getVkVideoId() {
            return this.vkVideoId;
        }

        public boolean isVip() {
            return this.payType.intValue() == 1;
        }

        public void setActors(String str) {
            this.actors = str;
        }

        public void setCategories(List<VkRecommendBean.CategoryBean> list) {
            this.categories = list;
        }

        public void setCoverX(String str) {
            this.coverX = str;
        }

        public void setCoverY(String str) {
            this.coverY = str;
        }

        public void setCreated(String str) {
            this.created = str;
        }

        public void setDescription(String str) {
            this.description = str;
        }

        public void setDirectors(String str) {
            this.directors = str;
        }

        public void setDisplayType(Object obj) {
            this.displayType = obj;
        }

        public void setDuration(Integer num) {
            this.duration = num;
        }

        public void setFinishStatus(Integer num) {
            this.finishStatus = num;
        }

        public void setId(Integer num) {
            this.id = num;
        }

        public void setImages(List<VkRecommendBean.ImageBean> list) {
            this.images = list;
        }

        public void setIsLive(Integer num) {
            this.isLive = num;
        }

        public void setKeyword(String str) {
            this.keyword = str;
        }

        public void setLanguage(String str) {
            this.language = str;
        }

        public void setLikes(Long l) {
            this.likes = l;
        }

        public void setOnlineStatus(Integer num) {
            this.onlineStatus = num;
        }

        public void setOnlineUpdateTime(Object obj) {
            this.onlineUpdateTime = obj;
        }

        public void setPayType(Integer num) {
            this.payType = num;
        }

        public void setPlayEndTime(Object obj) {
            this.playEndTime = obj;
        }

        public void setPlayStartTime(Object obj) {
            this.playStartTime = obj;
        }

        public void setPrice(Integer num) {
            this.price = num;
        }

        public void setScores(Double d) {
            this.scores = d;
        }

        public void setSerialCount(Integer num) {
            this.serialCount = num;
        }

        public void setShortDescribe(String str) {
            this.shortDescribe = str;
        }

        public void setSourceId(String str) {
            this.sourceId = str;
        }

        public void setSourceImage(String str) {
            this.sourceImage = str;
        }

        public void setSourceName(Object obj) {
            this.sourceName = obj;
        }

        public void setSourceType(Integer num) {
            this.sourceType = num;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setTvMark(Object obj) {
            this.tvMark = obj;
        }

        public void setVideoDefinitionList(Object obj) {
            this.videoDefinitionList = obj;
        }

        public void setVideoLink(Object obj) {
            this.videoLink = obj;
        }

        public void setVideoSerialList(Object obj) {
            this.videoSerialList = obj;
        }

        public void setViews(Long l) {
            this.views = l;
        }

        public void setVkVideoId(String str) {
            this.vkVideoId = str;
        }
    }

    public String getChannelConver() {
        return this.channelConver;
    }

    public String getChannelName() {
        return this.channelName;
    }

    public Integer getEndTime() {
        return this.endTime;
    }

    public String getShortDescribe() {
        return this.shortDescribe;
    }

    public String getSourceId() {
        return this.sourceId;
    }

    public Integer getStartTime() {
        return this.startTime;
    }

    public String getTitle() {
        return this.title;
    }

    public VideoBean getVideo() {
        return this.video;
    }

    public Integer getVideoId() {
        return this.videoId;
    }

    public Integer getVideoSerialId() {
        return this.videoSerialId;
    }

    public String getVideoSerialSourceId() {
        return this.videoSerialSourceId;
    }

    public void setChannelName(String str) {
        this.channelName = str;
    }

    public void setEndTime(Integer num) {
        this.endTime = num;
    }

    public void setShortDescribe(String str) {
        this.shortDescribe = str;
    }

    public void setSourceId(String str) {
        this.sourceId = str;
    }

    public void setStartTime(Integer num) {
        this.startTime = num;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setVideo(VideoBean videoBean) {
        this.video = videoBean;
    }

    public void setVideoId(Integer num) {
        this.videoId = num;
    }

    public void setVideoSerialId(Integer num) {
        this.videoSerialId = num;
    }

    public void setVideoSerialSourceId(String str) {
        this.videoSerialSourceId = str;
    }
}
