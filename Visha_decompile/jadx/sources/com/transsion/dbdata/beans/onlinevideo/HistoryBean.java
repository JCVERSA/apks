package com.transsion.dbdata.beans.onlinevideo;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.Ignore;
import androidx.room.PrimaryKey;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import defpackage.hb0;
import java.util.Arrays;

@Entity(tableName = "online_history")
public class HistoryBean extends TypeBean {
    public static final int TYPE_INTACT = 1;

    @SerializedName("channel_cover")
    @ColumnInfo(name = "channel_cover")
    public String channelCover;

    @SerializedName("channel_name")
    @ColumnInfo(name = "channel_name")
    public String channelName;

    @ColumnInfo(name = "video_description")
    @Expose(serialize = false)
    public String description;

    @SerializedName("duration")
    @ColumnInfo(name = "duration")
    public long duration;

    @Ignore
    public Integer finish_status;

    @SerializedName("is_intact")
    @ColumnInfo(name = "is_intact")
    public int isIntact;

    @Ignore
    @Expose(serialize = false)
    public boolean isTimeItem;

    @SerializedName("video_play_time")
    @ColumnInfo(name = "last_play_postion")
    public long lastPos;

    @SerializedName("user_play_time")
    @ColumnInfo(name = "last_watch_time")
    public long lastWatchTime;

    @SerializedName("is_youtube")
    @ColumnInfo(name = "is_youtube")
    public int mIsYoutube;

    @SerializedName("pay_type")
    @ColumnInfo(name = "pay_type")
    public int payType;

    @SerializedName("playLet")
    @ColumnInfo(name = "play_let")
    public int playLet;

    @Ignore
    @Expose(serialize = false)
    public SuperiorRecommend[] recommends;

    @SerializedName(TtmlNode.ATTR_ID)
    @ColumnInfo(name = "record_id")
    @Expose(serialize = false)
    public long recordId;

    @SerializedName("video_serial_id")
    @PrimaryKey(autoGenerate = false)
    public long serialId;

    @Ignore
    public int serial_count;

    @ColumnInfo(name = "series_id")
    public long seriesId;

    @SerializedName("video_serial_source_id")
    @ColumnInfo(name = hb0.KEY_NAME_VK_SOURCE_ID)
    public String sourceId;

    @SerializedName("source_type")
    @ColumnInfo(defaultValue = "1", name = "source_type")
    public String sourceType;

    @Ignore
    @Expose(serialize = false)
    public String title;

    @ColumnInfo(name = "update_progress")
    @Expose(serialize = false)
    public String updateProgress;

    @SerializedName(TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID)
    @ColumnInfo(name = TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID)
    public long userId;

    @SerializedName("video_bean_json")
    @ColumnInfo(name = "video_bean_json")
    public String videoBeanJson;

    @SerializedName("cover")
    @ColumnInfo(name = "video_cover")
    public String videoCover;

    @ColumnInfo(name = "last_frame_img")
    @Expose(serialize = false)
    public byte[] videoFrame;

    @SerializedName("video_id")
    @ColumnInfo(name = "video_id")
    public long videoId;

    @SerializedName("video_name")
    @ColumnInfo(name = "video_name")
    public String videoName;

    @SerializedName("video_serial_name")
    @ColumnInfo(name = "video_serial_name")
    public String videoSerialName;

    @SerializedName("video_link")
    @ColumnInfo(defaultValue = "", name = "video_link")
    public String videoUrl;

    @ColumnInfo(name = "watch_progress")
    @Expose(serialize = false)
    public float watchProgress;

    public HistoryBean() {
    }

    public String getChannelCover() {
        return this.channelCover;
    }

    public String getChannelName() {
        return this.channelName;
    }

    public SuperiorRecommend[] getRecommends() {
        return this.recommends;
    }

    public int getmIsYoutube() {
        return this.mIsYoutube;
    }

    public boolean isShortVideo() {
        int i = this.playLet;
        return i == 1 || i == 2;
    }

    public void setRecommends(SuperiorRecommend[] superiorRecommendArr) {
        this.recommends = superiorRecommendArr;
    }

    public String toString() {
        return "HistoryBean{serialId=" + this.serialId + ", sourceId='" + this.sourceId + "', videoId=" + this.videoId + ", videoName='" + this.videoName + "', seriesId=" + this.seriesId + ", description='" + this.description + "', lastPos=" + this.lastPos + ", duration=" + this.duration + ", videoCover='" + this.videoCover + "', lastWatchTime=" + this.lastWatchTime + ", videoFrame=" + Arrays.toString(this.videoFrame) + ", watchProgress=" + this.watchProgress + ", updateProgress='" + this.updateProgress + "', recordId=" + this.recordId + ", userId=" + this.userId + ", videoSerialName='" + this.videoSerialName + "', videoUrl='" + this.videoUrl + "', sourceType='" + this.sourceType + "', payType=" + this.payType + ", isIntact=" + this.isIntact + ", mIsYoutube=" + this.mIsYoutube + ", channelName='" + this.channelName + "', channelCover='" + this.channelCover + "', isTimeItem=" + this.isTimeItem + ", recommends=" + Arrays.toString(this.recommends) + ", title='" + this.title + "'}";
    }

    public boolean videoIsTact() {
        return this.isIntact == 1;
    }

    @Ignore
    public HistoryBean(SuperiorRecommend[] superiorRecommendArr) {
        this.recommends = superiorRecommendArr;
    }

    @Ignore
    public HistoryBean(String str) {
        this.title = str;
    }

    @Ignore
    public HistoryBean(long j, long j2, String str, String str2, String str3, String str4, int i, String str5, String str6, long j3, long j4, long j5, long j6) {
        this.serialId = j;
        this.videoId = j2;
        this.sourceId = str;
        this.videoName = str2;
        this.videoCover = str3;
        this.videoUrl = str4;
        this.mIsYoutube = i;
        this.channelName = str5;
        this.channelCover = str6;
        this.lastWatchTime = j3;
        this.lastPos = j4;
        this.duration = j5;
        this.userId = j6;
    }

    @Ignore
    public HistoryBean(long j, long j2, String str, String str2, String str3, String str4, int i, String str5, String str6, long j3, long j4, long j5, long j6, String str7, String str8) {
        this.serialId = j;
        this.videoId = j2;
        this.sourceId = str;
        this.videoName = str2;
        this.videoCover = str3;
        this.videoUrl = str4;
        this.mIsYoutube = i;
        this.channelName = str5;
        this.channelCover = str6;
        this.lastWatchTime = j3;
        this.lastPos = j4;
        this.duration = j5;
        this.userId = j6;
        this.sourceType = str7;
        this.videoBeanJson = str8;
    }

    @Ignore
    public HistoryBean(long j, long j2, long j3, String str, String str2, long j4, long j5, long j6, String str3, String str4, long j7, int i, int i2, String str5, String str6, int i3) {
        this.serialId = j;
        this.sourceId = str;
        this.seriesId = j2;
        this.videoId = j3;
        this.videoName = str2;
        this.lastWatchTime = j4;
        this.lastPos = j5;
        this.duration = j6;
        this.videoCover = str3;
        this.userId = j7;
        this.videoSerialName = str4;
        this.payType = i;
        this.isIntact = i2;
        this.videoUrl = str5;
        this.sourceType = str6;
        this.playLet = i3;
    }
}
