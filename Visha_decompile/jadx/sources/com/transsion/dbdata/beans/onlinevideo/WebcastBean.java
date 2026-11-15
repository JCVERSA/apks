package com.transsion.dbdata.beans.onlinevideo;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.gson.annotations.SerializedName;
import defpackage.hb0;
import java.util.List;

public class WebcastBean extends TypeBean {

    @SerializedName("actors")
    private String actors;

    @SerializedName("cover_x")
    private String coverX;

    @SerializedName("cover_y")
    private String coverY;

    @SerializedName("description")
    private String description;

    @SerializedName("directors")
    private String directors;

    @SerializedName("duration")
    private Integer duration;

    @SerializedName("finish_status")
    private Integer finishStatus;

    @SerializedName(TtmlNode.ATTR_ID)
    private Integer id;

    @SerializedName("is_live")
    private Integer isLive;

    @SerializedName("keyword")
    private String keyword;

    @SerializedName("language")
    private String language;

    @SerializedName("online_status")
    private Integer onlineStatus;

    @SerializedName("online_update_time")
    private Long onlineUpdateTime;

    @SerializedName("pay_type")
    private Integer payType;

    @SerializedName("play_end_time")
    private Long playEndTime;

    @SerializedName("play_start_time")
    private Long playStartTime;

    @SerializedName("price")
    private Integer price;

    @SerializedName("scores")
    private Double scores;

    @SerializedName("serial_count")
    private Integer serialCount;

    @SerializedName(hb0.KEY_NAME_VK_SOURCE_ID)
    private String sourceId;

    @SerializedName("source_name")
    private String sourceName;

    @SerializedName("source_type")
    private Integer sourceType;

    @SerializedName("title")
    private String title;

    @SerializedName("tv_mark")
    private String tvMark;

    @SerializedName("video_definition_list")
    private List<Integer> videoDefinitionList;

    @SerializedName("video_link")
    private String videoLink;

    @SerializedName("video_serial_list")
    private List<WebcastSerialBean> videoSerialList;

    public String getActors() {
        return this.actors;
    }

    public String getCoverX() {
        return this.coverX;
    }

    public String getCoverY() {
        return this.coverY;
    }

    public String getDescription() {
        return this.description;
    }

    public String getDirectors() {
        return this.directors;
    }

    public Integer getDuration() {
        return this.duration;
    }

    public Integer getFinishStatus() {
        return this.finishStatus;
    }

    public WebcastSerialBean getFirstWebcastSerialBean() {
        List<WebcastSerialBean> list = this.videoSerialList;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.videoSerialList.get(0);
    }

    public Integer getId() {
        return this.id;
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

    public Integer getOnlineStatus() {
        return this.onlineStatus;
    }

    public Long getOnlineUpdateTime() {
        return this.onlineUpdateTime;
    }

    public Integer getPayType() {
        return this.payType;
    }

    public Long getPlayEndTime() {
        return this.playEndTime;
    }

    public Long getPlayStartTime() {
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

    public String getSourceId() {
        return this.sourceId;
    }

    public String getSourceName() {
        return this.sourceName;
    }

    public Integer getSourceType() {
        return this.sourceType;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTvMark() {
        return this.tvMark;
    }

    public List<Integer> getVideoDefinitionList() {
        return this.videoDefinitionList;
    }

    public String getVideoLink() {
        return this.videoLink;
    }

    public List<WebcastSerialBean> getVideoSerialList() {
        return this.videoSerialList;
    }

    public void setActors(String str) {
        this.actors = str;
    }

    public void setCoverX(String str) {
        this.coverX = str;
    }

    public void setCoverY(String str) {
        this.coverY = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setDirectors(String str) {
        this.directors = str;
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

    public void setIsLive(Integer num) {
        this.isLive = num;
    }

    public void setKeyword(String str) {
        this.keyword = str;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public void setOnlineStatus(Integer num) {
        this.onlineStatus = num;
    }

    public void setOnlineUpdateTime(Long l) {
        this.onlineUpdateTime = l;
    }

    public void setPayType(Integer num) {
        this.payType = num;
    }

    public void setPlayEndTime(Long l) {
        this.playEndTime = l;
    }

    public void setPlayStartTime(Long l) {
        this.playStartTime = l;
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

    public void setSourceId(String str) {
        this.sourceId = str;
    }

    public void setSourceName(String str) {
        this.sourceName = str;
    }

    public void setSourceType(Integer num) {
        this.sourceType = num;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTvMark(String str) {
        this.tvMark = str;
    }

    public void setVideoDefinitionList(List<Integer> list) {
        this.videoDefinitionList = list;
    }

    public void setVideoLink(String str) {
        this.videoLink = str;
    }

    public void setVideoSerialList(List<WebcastSerialBean> list) {
        this.videoSerialList = list;
    }
}
