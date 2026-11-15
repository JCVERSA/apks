package com.transsion.dbdata.beans;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.blankj.utilcode.util.LogUtils;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.beans.mimedia.MIMediaInfo;
import defpackage.y45;
import java.io.Serializable;
import java.time.Instant;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b7\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001Bñ\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\b\b\u0002\u0010\u0016\u001a\u00020\f\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u001a\u0010\u001bJ\b\u0010K\u001a\u00020LH\u0016J\u0010\u0010M\u001a\u00020L2\u0006\u0010N\u001a\u00020\fH\u0016J\u0013\u0010O\u001a\u00020\u00142\b\u0010P\u001a\u0004\u0018\u00010QH\u0096\u0002J\b\u0010R\u001a\u00020\u0000H\u0016J\u0006\u0010S\u001a\u00020TJ\b\u0010U\u001a\u00020\u0005H\u0016R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b\u001c\u0010\u001dR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010 \"\u0004\b$\u0010\"R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\b%\u0010\u001d\"\u0004\b&\u0010'R\u001e\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\b(\u0010\u001d\"\u0004\b)\u0010'R\u0015\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b*\u0010\u001dR\u0015\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b+\u0010\u001dR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u0010\n\u0002\u00100\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b1\u0010 R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b2\u0010 R\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010 \"\u0004\b8\u0010\"R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010 \"\u0004\b:\u0010\"R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010 \"\u0004\b<\u0010\"R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u0010\n\u0002\u0010@\u001a\u0004\b\u0013\u0010=\"\u0004\b>\u0010?R\u0015\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\n\n\u0002\u0010@\u001a\u0004\b\u0015\u0010=R\u001a\u0010\u0016\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010 \"\u0004\bF\u0010\"R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010 \"\u0004\bH\u0010\"R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010 \"\u0004\bJ\u0010\"¨\u0006V"}, d2 = {"Lcom/transsion/dbdata/beans/VideoCloudData;", "Ljava/io/Serializable;", TtmlNode.ATTR_ID, "", "fileId", "", Progress.FILE_NAME, PlayAudioData.TAG_SIZE, "duration", "height", "width", "watchStatus", "", "createAt", "sharerNickname", "playDuration", "fileCoverPath", "previewUrl", "parentFileId", "isExitLocal", "", "isRecentData", "dataType", "mediaLibraryId", "cover", "updateTime", MethodDecl.initName, "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getFileId", "()Ljava/lang/String;", "setFileId", "(Ljava/lang/String;)V", "getFileName", "setFileName", "getSize", "setSize", "(Ljava/lang/Long;)V", "getDuration", "setDuration", "getHeight", "getWidth", "getWatchStatus", "()Ljava/lang/Integer;", "setWatchStatus", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getCreateAt", "getSharerNickname", "getPlayDuration", "()J", "setPlayDuration", "(J)V", "getFileCoverPath", "setFileCoverPath", "getPreviewUrl", "setPreviewUrl", "getParentFileId", "setParentFileId", "()Ljava/lang/Boolean;", "setExitLocal", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getDataType", "()I", "setDataType", "(I)V", "getMediaLibraryId", "setMediaLibraryId", "getCover", "setCover", "getUpdateTime", "setUpdateTime", "toPlayVideoData", "Lcom/transsion/dbdata/beans/media/PlayVideoData;", "toPlayViewDataForMediaVideo", "listFlag", "equals", "other", "", "copy", "toMediaItem", "Lcom/transsion/dbdata/beans/media/MediaItem;", "toString", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class VideoCloudData implements Serializable {
    private String cover;
    private final String createAt;
    private int dataType;
    private Long duration;
    private String fileCoverPath;
    private String fileId;
    private String fileName;
    private final Long height;
    private final Long id;
    private Boolean isExitLocal;
    private final Boolean isRecentData;
    private String mediaLibraryId;
    private String parentFileId;
    private long playDuration;
    private String previewUrl;
    private final String sharerNickname;
    private Long size;
    private String updateTime;
    private Integer watchStatus;

    private final Long weight;

    public VideoCloudData() {
        this(null, null, null, null, null, null, null, null, null, null, 0L, null, null, null, null, null, 0, null, null, null, 1048575, null);
    }

    public VideoCloudData copy() {
        return new VideoCloudData(this.id, this.fileId, this.fileName, this.size, this.duration, this.height, this.weight, this.watchStatus, this.createAt, this.sharerNickname, this.playDuration, this.fileCoverPath, this.previewUrl, this.parentFileId, this.isExitLocal, this.isRecentData, this.dataType, this.mediaLibraryId, this.cover, null, 524288, null);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other instanceof VideoCloudData) {
            return y45.e(this.fileId, ((VideoCloudData) other).fileId);
        }
        return false;
    }

    public final String getCover() {
        return this.cover;
    }

    public final String getCreateAt() {
        return this.createAt;
    }

    public final int getDataType() {
        return this.dataType;
    }

    public final Long getDuration() {
        return this.duration;
    }

    public final String getFileCoverPath() {
        return this.fileCoverPath;
    }

    public final String getFileId() {
        return this.fileId;
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final Long getHeight() {
        return this.height;
    }

    public final Long getId() {
        return this.id;
    }

    public final String getMediaLibraryId() {
        return this.mediaLibraryId;
    }

    public final String getParentFileId() {
        return this.parentFileId;
    }

    public final long getPlayDuration() {
        return this.playDuration;
    }

    public final String getPreviewUrl() {
        return this.previewUrl;
    }

    public final String getSharerNickname() {
        return this.sharerNickname;
    }

    public final Long getSize() {
        return this.size;
    }

    public final String getUpdateTime() {
        return this.updateTime;
    }

    public final Integer getWatchStatus() {
        return this.watchStatus;
    }

    public final Long getWeight() {
        return this.weight;
    }

    public final Boolean getIsExitLocal() {
        return this.isExitLocal;
    }

    public final Boolean getIsRecentData() {
        return this.isRecentData;
    }

    public final void setCover(String str) {
        this.cover = str;
    }

    public final void setDataType(int i) {
        this.dataType = i;
    }

    public final void setDuration(Long l) {
        this.duration = l;
    }

    public final void setExitLocal(Boolean bool) {
        this.isExitLocal = bool;
    }

    public final void setFileCoverPath(String str) {
        this.fileCoverPath = str;
    }

    public final void setFileId(String str) {
        y45.j(str, "<set-?>");
        this.fileId = str;
    }

    public final void setFileName(String str) {
        this.fileName = str;
    }

    public final void setMediaLibraryId(String str) {
        this.mediaLibraryId = str;
    }

    public final void setParentFileId(String str) {
        this.parentFileId = str;
    }

    public final void setPlayDuration(long j) {
        this.playDuration = j;
    }

    public final void setPreviewUrl(String str) {
        this.previewUrl = str;
    }

    public final void setSize(Long l) {
        this.size = l;
    }

    public final void setUpdateTime(String str) {
        this.updateTime = str;
    }

    public final void setWatchStatus(Integer num) {
        this.watchStatus = num;
    }

    public final MediaItem toMediaItem() {
        MediaItem mediaItem = new MediaItem();
        mediaItem.id = -1;
        mediaItem.data = this.fileId;
        String str = this.fileName;
        mediaItem.displayName = str;
        mediaItem.title = str;
        Long l = this.size;
        mediaItem.size = l != null ? l.longValue() : 0L;
        Long l2 = this.duration;
        mediaItem.duration = l2 != null ? l2.longValue() : 0L;
        Long l3 = this.height;
        mediaItem.height = (int) (l3 != null ? l3.longValue() : 0L);
        Long l4 = this.weight;
        mediaItem.width = (int) (l4 != null ? l4.longValue() : 0L);
        mediaItem.playPosition = (int) this.playDuration;
        mediaItem.thumbnailUrl = this.previewUrl;
        mediaItem.isKtFile = true;
        try {
            mediaItem.dateModified = Instant.parse(this.createAt).toEpochMilli() / ((long) 1000);
        } catch (Exception e) {
            LogUtils.O("toMediaItem Instant.parse(mCreateAt).toEpochMilli() error: " + e.getMessage());
        }
        return mediaItem;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0021  */
    /* JADX WARN: Code duplicated, block: B:18:0x0039  */
    public PlayVideoData toPlayVideoData() {
        long jLongValue;
        long jLongValue2;
        PlayVideoData playVideoData = new PlayVideoData();
        playVideoData.playTitle = this.fileName;
        Long l = this.weight;
        if (l == null) {
            jLongValue = 0;
        } else {
            if (l.longValue() <= 0) {
                l = null;
            }
            if (l != null) {
                jLongValue = l.longValue();
            } else {
                jLongValue = 0;
            }
        }
        playVideoData.videoWidth = (int) jLongValue;
        Long l2 = this.height;
        if (l2 == null) {
            jLongValue2 = 0;
        } else {
            Long l3 = l2.longValue() > 0 ? l2 : null;
            if (l3 != null) {
                jLongValue2 = l3.longValue();
            } else {
                jLongValue2 = 0;
            }
        }
        playVideoData.videoHeight = (int) jLongValue2;
        Long l4 = this.duration;
        playVideoData.duration = l4 != null ? l4.longValue() : 0L;
        playVideoData.isFromNet = true;
        playVideoData.mKtFileId = this.fileId;
        playVideoData.listFlag = 50;
        LogUtils.v("previewUrl: " + this.previewUrl);
        return playVideoData;
    }

    public PlayVideoData toPlayViewDataForMediaVideo(int listFlag) {
        MIMediaInfo mIMediaInfoBuild = new MIMediaInfo.Builder().setNeedRecordPlayInfo(true).setMediaLibraryId(this.mediaLibraryId).setVideoId(this.fileId).setCoverUri(this.cover).setVideoTitle(this.fileName).getMediaInfo();
        PlayVideoData playVideoDataBuild = PlayVideoData.builder().setMiMediaInfo(mIMediaInfoBuild).setListFlag(listFlag).setIsFromNet(true).setDisplayName(mIMediaInfoBuild.getVideoTitle()).setPath(this.fileId).build();
        y45.g(playVideoDataBuild);
        return playVideoDataBuild;
    }

    public String toString() {
        return "VideoCloudData(id=" + this.id + ", fileId=" + this.fileId + ", fileName=" + this.fileName + ", size=" + this.size + ", duration=" + this.duration + ", height=" + this.height + ", weight=" + this.weight + ", watchStatus=" + this.watchStatus + ", createAt=" + this.createAt + ", sharerNickname=" + this.sharerNickname + ", playDuration=" + this.playDuration + ", fileCoverPath=" + this.fileCoverPath + ", previewUrl=" + this.previewUrl + ", parentFileId=" + this.parentFileId + ", isExitLocal=" + this.isExitLocal + ")";
    }

    public VideoCloudData(Long l, String str, String str2, Long l2, Long l3, Long l4, Long l5, Integer num, String str3, String str4, long j, String str5, String str6, String str7, Boolean bool, Boolean bool2, int i, String str8, String str9, String str10) {
        y45.j(str, "fileId");
        this.id = l;
        this.fileId = str;
        this.fileName = str2;
        this.size = l2;
        this.duration = l3;
        this.height = l4;
        this.weight = l5;
        this.watchStatus = num;
        this.createAt = str3;
        this.sharerNickname = str4;
        this.playDuration = j;
        this.fileCoverPath = str5;
        this.previewUrl = str6;
        this.parentFileId = str7;
        this.isExitLocal = bool;
        this.isRecentData = bool2;
        this.dataType = i;
        this.mediaLibraryId = str8;
        this.cover = str9;
        this.updateTime = str10;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public VideoCloudData(Long l, String str, String str2, Long l2, Long l3, Long l4, Long l5, Integer num, String str3, String str4, long j, String str5, String str6, String str7, Boolean bool, Boolean bool2, int i, String str8, String str9, String str10, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        Long l6 = 0L;
        this((i2 & 1) != 0 ? l6 : l, (i2 & 2) != 0 ? "" : str, (i2 & 4) != 0 ? "" : str2, (i2 & 8) != 0 ? l6 : l2, (i2 & 16) != 0 ? l6 : l3, (i2 & 32) != 0 ? l6 : l4, (i2 & 64) == 0 ? l5 : 0L, (i2 & 128) != 0 ? -1 : num, (i2 & 256) != 0 ? "" : str3, (i2 & 512) != 0 ? "" : str4, (i2 & 1024) == 0 ? j : 0L, (i2 & 2048) != 0 ? "" : str5, (i2 & 4096) != 0 ? "" : str6, (i2 & 8192) != 0 ? "" : str7, (i2 & 16384) != 0 ? Boolean.FALSE : bool, (i2 & 32768) != 0 ? Boolean.FALSE : bool2, (i2 & 65536) != 0 ? 1 : i, (i2 & 131072) != 0 ? "" : str8, (i2 & 262144) != 0 ? "" : str9, (i2 & 524288) != 0 ? "" : str10);
    }
}
