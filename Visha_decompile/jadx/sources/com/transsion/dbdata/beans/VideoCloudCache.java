package com.transsion.dbdata.beans;

import androidx.annotation.NonNull;
import androidx.core.provider.FontsContractCompat;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Entity(tableName = "video_cloud_cache")
public class VideoCloudCache {

    @ColumnInfo(name = "cache_time")
    private long mCacheTime;

    @ColumnInfo(name = "cover")
    private String mCover;

    @ColumnInfo(name = "data_type")
    private int mDataType;

    @ColumnInfo(name = "is_exit_local")
    private Boolean mIsExitLocal;

    @ColumnInfo(name = "is_recent_data")
    private Boolean mIsRecentData;

    @ColumnInfo(name = "mediaLibrary_id")
    private String mMediaLibraryId;

    @ColumnInfo(name = "mId")
    private long mId = 0;

    @NonNull
    @PrimaryKey
    @ColumnInfo(name = FontsContractCompat.Columns.FILE_ID)
    private String mFileId = "";

    @ColumnInfo(name = "file_name")
    private String mFileName = "";

    @ColumnInfo(name = PlayAudioData.TAG_SIZE)
    private Long mSize = 0L;

    @ColumnInfo(name = "duration")
    private Long mDuration = 0L;

    @ColumnInfo(name = "height")
    private Long mHeight = 0L;

    @ColumnInfo(name = "width")
    private Long mWidth = 0L;

    @ColumnInfo(name = "watch_status")
    private Integer mWatchStatus = -1;

    @ColumnInfo(name = "create_at")
    private String mCreateAt = "";

    @ColumnInfo(name = "sharer_nickname")
    private String mSharerNickname = "";

    @ColumnInfo(name = "play_duration")
    private Long mPlayDuration = 0L;

    @ColumnInfo(name = "file_cover_path")
    private String mFileCoverPath = "";

    @ColumnInfo(name = "preview_url")
    private String mPreviewUrl = "";

    @ColumnInfo(name = "parent_file_id")
    private String mParentFileId = "";

    public VideoCloudCache() {
        Boolean bool = Boolean.FALSE;
        this.mIsExitLocal = bool;
        this.mCacheTime = System.currentTimeMillis();
        this.mIsRecentData = bool;
        this.mDataType = 1;
        this.mMediaLibraryId = "";
        this.mCover = "";
    }

    public static VideoCloudCache fromVideoCloudData(VideoCloudData videoCloudData) {
        VideoCloudCache videoCloudCache = new VideoCloudCache();
        videoCloudCache.setId(videoCloudData.getId() != null ? videoCloudData.getId().longValue() : 0L);
        videoCloudCache.setFileId(videoCloudData.getFileId() != null ? videoCloudData.getFileId() : "");
        videoCloudCache.setFileName(videoCloudData.getFileName());
        videoCloudCache.setSize(videoCloudData.getSize());
        videoCloudCache.setDuration(videoCloudData.getDuration());
        videoCloudCache.setHeight(videoCloudData.getHeight());
        videoCloudCache.setWidth(videoCloudData.getWeight());
        videoCloudCache.setWatchStatus(videoCloudData.getWatchStatus());
        videoCloudCache.setCreateAt(videoCloudData.getCreateAt());
        videoCloudCache.setSharerNickname(videoCloudData.getSharerNickname());
        videoCloudCache.setPlayDuration(Long.valueOf(videoCloudData.getPlayDuration()));
        videoCloudCache.setFileCoverPath(videoCloudData.getFileCoverPath());
        videoCloudCache.setPreviewUrl(videoCloudData.getPreviewUrl());
        videoCloudCache.setParentFileId(videoCloudData.getParentFileId());
        videoCloudCache.setIsExitLocal(videoCloudData.getIsExitLocal());
        videoCloudCache.setIsRecentData(videoCloudData.getIsRecentData());
        videoCloudCache.setDataType(videoCloudData.getDataType());
        videoCloudCache.setMediaLibraryId(videoCloudData.getMediaLibraryId());
        videoCloudCache.setCover(videoCloudData.getCover());
        return videoCloudCache;
    }

    public static List<VideoCloudCache> fromVideoCloudDataList(List<VideoCloudData> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<VideoCloudData> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(fromVideoCloudData(it.next()));
        }
        return arrayList;
    }

    public long getCacheTime() {
        return this.mCacheTime;
    }

    public String getCover() {
        return this.mCover;
    }

    public String getCreateAt() {
        return this.mCreateAt;
    }

    public int getDataType() {
        return this.mDataType;
    }

    public Long getDuration() {
        return this.mDuration;
    }

    public String getFileCoverPath() {
        return this.mFileCoverPath;
    }

    public String getFileId() {
        return this.mFileId;
    }

    public String getFileName() {
        return this.mFileName;
    }

    public Long getHeight() {
        return this.mHeight;
    }

    public long getId() {
        return this.mId;
    }

    public Boolean getIsExitLocal() {
        return this.mIsExitLocal;
    }

    public Boolean getIsRecentData() {
        return this.mIsRecentData;
    }

    public String getMediaLibraryId() {
        return this.mMediaLibraryId;
    }

    public String getParentFileId() {
        return this.mParentFileId;
    }

    public Long getPlayDuration() {
        return this.mPlayDuration;
    }

    public String getPreviewUrl() {
        return this.mPreviewUrl;
    }

    public String getSharerNickname() {
        return this.mSharerNickname;
    }

    public Long getSize() {
        return this.mSize;
    }

    public Integer getWatchStatus() {
        return this.mWatchStatus;
    }

    public Long getWidth() {
        return this.mWidth;
    }

    public void setCacheTime(long j) {
        this.mCacheTime = j;
    }

    public void setCover(String str) {
        this.mCover = str;
    }

    public void setCreateAt(String str) {
        this.mCreateAt = str;
    }

    public void setDataType(int i) {
        this.mDataType = i;
    }

    public void setDuration(Long l) {
        this.mDuration = l;
    }

    public void setFileCoverPath(String str) {
        this.mFileCoverPath = str;
    }

    public void setFileId(String str) {
        this.mFileId = str;
    }

    public void setFileName(String str) {
        this.mFileName = str;
    }

    public void setHeight(Long l) {
        this.mHeight = l;
    }

    public void setId(long j) {
        this.mId = j;
    }

    public void setIsExitLocal(Boolean bool) {
        this.mIsExitLocal = bool;
    }

    public void setIsRecentData(Boolean bool) {
        this.mIsRecentData = bool;
    }

    public void setMediaLibraryId(String str) {
        this.mMediaLibraryId = str;
    }

    public void setParentFileId(String str) {
        this.mParentFileId = str;
    }

    public void setPlayDuration(Long l) {
        this.mPlayDuration = l;
    }

    public void setPreviewUrl(String str) {
        this.mPreviewUrl = str;
    }

    public void setSharerNickname(String str) {
        this.mSharerNickname = str;
    }

    public void setSize(Long l) {
        this.mSize = l;
    }

    public void setWatchStatus(Integer num) {
        this.mWatchStatus = num;
    }

    public void setWidth(Long l) {
        this.mWidth = l;
    }

    public MediaItem toMediaItem() {
        MediaItem mediaItem = new MediaItem();
        mediaItem.id = -1;
        mediaItem.data = this.mFileId;
        String str = this.mFileName;
        mediaItem.displayName = str;
        mediaItem.title = str;
        mediaItem.size = this.mSize.longValue();
        mediaItem.duration = this.mDuration.longValue();
        Long l = this.mHeight;
        mediaItem.height = l == null ? 0 : Math.toIntExact(l.longValue());
        Long l2 = this.mWidth;
        mediaItem.width = l2 == null ? 0 : Math.toIntExact(l2.longValue());
        Long l3 = this.mPlayDuration;
        mediaItem.playPosition = l3 != null ? Math.toIntExact(l3.longValue()) : 0;
        mediaItem.thumbnailUrl = this.mFileCoverPath;
        mediaItem.isKtFile = true;
        try {
            mediaItem.dateModified = Instant.parse(this.mCreateAt).toEpochMilli() / 1000;
        } catch (Exception e) {
            LogUtils.O("toMediaItem Instant.parse(mCreateAt).toEpochMilli() error: " + e.getMessage());
        }
        return mediaItem;
    }

    public String toString() {
        return "VideoCloudCache{mId=" + this.mId + ", mDataType='" + this.mDataType + "', mFileId='" + this.mFileId + "', mFileName='" + this.mFileName + "', mSize=" + this.mSize + ", mDuration=" + this.mDuration + ", mHeight=" + this.mHeight + ", mWidth=" + this.mWidth + ", mWatchStatus=" + this.mWatchStatus + ", mCreateAt='" + this.mCreateAt + "', mIsRecentData=" + this.mIsRecentData + ", mSharerNickname='" + this.mSharerNickname + "', mPlayDuration=" + this.mPlayDuration + ", mFileCoverPath='" + this.mFileCoverPath + "', mPreviewUrl='" + this.mPreviewUrl + "', mParentFileId='" + this.mParentFileId + "', mIsExitLocal=" + this.mIsExitLocal + ", mCacheTime=" + this.mCacheTime + '}';
    }

    public VideoCloudData toVideoCloudData() {
        return new VideoCloudData(Long.valueOf(this.mId), this.mFileId, this.mFileName, this.mSize, this.mDuration, this.mHeight, this.mWidth, this.mWatchStatus, this.mCreateAt, this.mSharerNickname, this.mPlayDuration.longValue(), this.mFileCoverPath, this.mPreviewUrl, this.mParentFileId, this.mIsExitLocal, this.mIsRecentData, this.mDataType, this.mMediaLibraryId, this.mCover, null);
    }
}
