package com.transsion.dbdata.beans.onlinevideo;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.gson.annotations.SerializedName;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;

public class CollectItem {
    private String channelCover;
    private String channelName;

    @SerializedName("collect_stamp")
    private long collectStamp;

    @SerializedName("cover_x")
    private String coverX;

    @SerializedName("cover_y")
    private String coverY;

    @SerializedName(TtmlNode.ATTR_ID)
    private long id;
    boolean isLogin;

    @SerializedName("is_vk")
    private int isVk;
    private int isYoutube;

    @SerializedName("pay_type")
    private Integer payType;
    private String sourceId;

    @SerializedName("source_type")
    private Integer sourceType;
    private long topicId;

    @SerializedName(TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID)
    private long userId;

    @SerializedName("video_id")
    private long videoId;

    @SerializedName("video_link")
    private String videoLink;

    @SerializedName("video_name")
    private String videoName;

    @SerializedName("vk_bean")
    private String vkBean;

    @SerializedName("vk_id")
    private String vkId;

    public CollectItem() {
    }

    public String getChannelCover() {
        return this.channelCover;
    }

    public String getChannelName() {
        return this.channelName;
    }

    public long getCollectStamp() {
        return this.collectStamp;
    }

    public String getCoverX() {
        return this.coverX;
    }

    public String getCoverY() {
        return this.coverY;
    }

    public long getId() {
        return this.id;
    }

    public int getIsYoutube() {
        return this.isYoutube;
    }

    public Integer getPayType() {
        return this.payType;
    }

    public String getSourceId() {
        return this.sourceId;
    }

    public Integer getSourceType() {
        return this.sourceType;
    }

    public long getTopicId() {
        return this.topicId;
    }

    public long getUserId() {
        return this.userId;
    }

    public long getVideoId() {
        return this.videoId;
    }

    public String getVideoLink() {
        return this.videoLink;
    }

    public String getVideoName() {
        return this.videoName;
    }

    public String getVkBean() {
        return this.vkBean;
    }

    public String getVkId() {
        return this.vkId;
    }

    public boolean isLogin() {
        return this.isLogin;
    }

    public int isVk() {
        return this.isVk;
    }

    public void setCollectStamp(long j) {
        this.collectStamp = j;
    }

    public void setCoverX(String str) {
        this.coverX = str;
    }

    public void setCoverY(String str) {
        this.coverY = str;
    }

    public void setId(Integer num) {
        this.id = num.intValue();
    }

    public void setIsYoutube(int i) {
        this.isYoutube = i;
    }

    public void setLogin(boolean z) {
        this.isLogin = z;
    }

    public void setPayType(Integer num) {
        this.payType = num;
    }

    public void setSourceType(Integer num) {
        this.sourceType = num;
    }

    public void setUserId(Integer num) {
        this.userId = num.intValue();
    }

    public void setVideoId(Integer num) {
        this.videoId = num.intValue();
    }

    public void setVideoLink(String str) {
        this.videoLink = str;
    }

    public void setVideoName(String str) {
        this.videoName = str;
    }

    public void setVk(int i) {
        this.isVk = i;
    }

    public void setVkBean(String str) {
        this.vkBean = str;
    }

    public void setVkId(String str) {
        this.vkId = str;
    }

    public String toString() {
        return "CollectItem{id=" + this.id + ", userId=" + this.userId + ", videoId=" + this.videoId + ", videoName='" + this.videoName + "', sourceType=" + this.sourceType + ", videoLink='" + this.videoLink + "', coverX='" + this.coverX + "', coverY='" + this.coverY + "', payType=" + this.payType + ", collectStamp=" + this.collectStamp + ", isYoutube=" + this.isYoutube + ", channelName='" + this.channelName + "', channelCover='" + this.channelCover + "', sourceId='" + this.sourceId + "', topicId=" + this.topicId + ", isLogin=" + this.isLogin + '}';
    }

    public CollectItem(long j, String str, Integer num, String str2, String str3, String str4, Integer num2, long j2, long j3) {
        this.videoId = j;
        this.videoName = str;
        this.sourceType = num;
        this.videoLink = str2;
        this.coverX = str3;
        this.coverY = str4;
        this.payType = num2;
        this.topicId = j3;
        this.collectStamp = j2;
    }

    public void setCollectStamp(Integer num) {
        this.collectStamp = num.intValue();
    }

    public CollectItem(String str, String str2, String str3, long j, int i, String str4, String str5) {
        this.videoName = str;
        this.sourceId = str2;
        this.coverX = str3;
        this.collectStamp = j;
        this.isYoutube = i;
        this.channelName = str4;
        this.channelCover = str5;
    }

    public CollectItem(String str, String str2, String str3, long j, int i, String str4, String str5, boolean z, String str6, String str7) {
        this.videoName = str;
        this.sourceId = str2;
        this.coverX = str3;
        this.collectStamp = j;
        this.isYoutube = i;
        this.channelName = str4;
        this.channelCover = str5;
        this.isVk = z ? 1 : 0;
        this.vkId = str6;
        this.vkBean = str7;
    }
}
