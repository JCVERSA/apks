package com.transsion.dbdata.beans;

import androidx.annotation.NonNull;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;
import com.lzy.okgo.cookie.SerializableCookie;
import com.transsion.xuanniao.account.model.data.CloudItem;

@Entity(tableName = "youtube_video")
public class YoutubeData {

    @ColumnInfo(name = "age_limit")
    private int ageLimit;

    @ColumnInfo(name = "date_modified")
    private long dateModified;

    @ColumnInfo(name = "description")
    private String description;

    @ColumnInfo(name = "height")
    private int height;

    @NonNull
    @PrimaryKey(autoGenerate = false)
    @ColumnInfo(name = TtmlNode.ATTR_ID)
    private String id;

    @ColumnInfo(name = "name")
    private String name;

    @ColumnInfo(name = "origin_url")
    private String originUrl;

    @ColumnInfo(name = "stream_type")
    private String streamType;

    @ColumnInfo(name = "textual_upload_date")
    private String textualUploadDate;

    @ColumnInfo(name = "video_stream")
    private String videoStream;

    @ColumnInfo(name = "width")
    private int width;

    @ColumnInfo(name = "thumbnail_url")
    private String thumbnailUrl = "";

    @ColumnInfo(name = "duration")
    private long duration = -1;

    @ColumnInfo(name = "view_count")
    private long viewCount = -1;

    @ColumnInfo(name = "like_count")
    private long likeCount = -1;

    @ColumnInfo(name = "dislike_count")
    private long dislikeCount = -1;

    @ColumnInfo(name = "uploader_name")
    private String uploaderName = "";

    @ColumnInfo(name = "uploader_url")
    private String uploaderUrl = "";

    @ColumnInfo(name = "uploader_avatar_url")
    private String uploaderAvatarUrl = "";

    @ColumnInfo(name = "uploader_verified")
    private boolean uploaderVerified = false;

    @ColumnInfo(name = "uploader_subscriber_count")
    private long uploaderSubscriberCount = -1;

    @ColumnInfo(name = "sub_channel_name")
    private String subChannelName = "";

    @ColumnInfo(name = "sub_channel_url")
    private String subChannelUrl = "";

    @ColumnInfo(name = "sub_channel_avatar")
    private String subChannelAvatarUrl = "";

    @ColumnInfo(name = "dash_mpd_url")
    private String dashMpdUrl = "";

    @ColumnInfo(name = "hls_url")
    private String hlsUrl = "";

    @ColumnInfo(name = "start_position")
    private long startPosition = 0;

    @ColumnInfo(name = SerializableCookie.HOST)
    private String host = "";

    @ColumnInfo(name = CloudItem.KEY_CATEGORY)
    private String category = "";

    @ColumnInfo(name = "licence")
    private String licence = "";

    @ColumnInfo(name = "support_info")
    private String supportInfo = "";

    @ColumnInfo(name = "language")
    private String language = null;

    public int getAgeLimit() {
        return this.ageLimit;
    }

    public String getCategory() {
        return this.category;
    }

    public String getDashMpdUrl() {
        return this.dashMpdUrl;
    }

    public long getDateModified() {
        return this.dateModified;
    }

    public String getDescription() {
        return this.description;
    }

    public long getDislikeCount() {
        return this.dislikeCount;
    }

    public long getDuration() {
        return this.duration;
    }

    public int getHeight() {
        return this.height;
    }

    public String getHlsUrl() {
        return this.hlsUrl;
    }

    public String getHost() {
        return this.host;
    }

    public String getId() {
        return this.id;
    }

    public String getLanguage() {
        return this.language;
    }

    public String getLicence() {
        return this.licence;
    }

    public long getLikeCount() {
        return this.likeCount;
    }

    public String getName() {
        return this.name;
    }

    public String getOriginUrl() {
        return this.originUrl;
    }

    public long getStartPosition() {
        return this.startPosition;
    }

    public String getStreamType() {
        return this.streamType;
    }

    public String getSubChannelAvatarUrl() {
        return this.subChannelAvatarUrl;
    }

    public String getSubChannelName() {
        return this.subChannelName;
    }

    public String getSubChannelUrl() {
        return this.subChannelUrl;
    }

    public String getSupportInfo() {
        return this.supportInfo;
    }

    public String getTextualUploadDate() {
        return this.textualUploadDate;
    }

    public String getThumbnailUrl() {
        return this.thumbnailUrl;
    }

    public String getUploaderAvatarUrl() {
        return this.uploaderAvatarUrl;
    }

    public String getUploaderName() {
        return this.uploaderName;
    }

    public long getUploaderSubscriberCount() {
        return this.uploaderSubscriberCount;
    }

    public String getUploaderUrl() {
        return this.uploaderUrl;
    }

    public String getVideoStream() {
        return this.videoStream;
    }

    public long getViewCount() {
        return this.viewCount;
    }

    public int getWidth() {
        return this.width;
    }

    public boolean isUploaderVerified() {
        return this.uploaderVerified;
    }

    public void setAgeLimit(int i) {
        this.ageLimit = i;
    }

    public void setCategory(String str) {
        this.category = str;
    }

    public void setDashMpdUrl(String str) {
        this.dashMpdUrl = str;
    }

    public void setDateModified(long j) {
        this.dateModified = j;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setDislikeCount(long j) {
        this.dislikeCount = j;
    }

    public void setDuration(long j) {
        this.duration = j;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public void setHlsUrl(String str) {
        this.hlsUrl = str;
    }

    public void setHost(String str) {
        this.host = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public void setLicence(String str) {
        this.licence = str;
    }

    public void setLikeCount(long j) {
        this.likeCount = j;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setOriginUrl(String str) {
        this.originUrl = str;
    }

    public void setStartPosition(long j) {
        this.startPosition = j;
    }

    public void setStreamType(String str) {
        this.streamType = str;
    }

    public void setSubChannelAvatarUrl(String str) {
        this.subChannelAvatarUrl = str;
    }

    public void setSubChannelName(String str) {
        this.subChannelName = str;
    }

    public void setSubChannelUrl(String str) {
        this.subChannelUrl = str;
    }

    public void setSupportInfo(String str) {
        this.supportInfo = str;
    }

    public void setTextualUploadDate(String str) {
        this.textualUploadDate = str;
    }

    public void setThumbnailUrl(String str) {
        this.thumbnailUrl = str;
    }

    public void setUploaderAvatarUrl(String str) {
        this.uploaderAvatarUrl = str;
    }

    public void setUploaderName(String str) {
        this.uploaderName = str;
    }

    public void setUploaderSubscriberCount(long j) {
        this.uploaderSubscriberCount = j;
    }

    public void setUploaderUrl(String str) {
        this.uploaderUrl = str;
    }

    public void setUploaderVerified(boolean z) {
        this.uploaderVerified = z;
    }

    public void setVideoStream(String str) {
        this.videoStream = str;
    }

    public void setViewCount(long j) {
        this.viewCount = j;
    }

    public void setWidth(int i) {
        this.width = i;
    }
}
