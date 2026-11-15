package com.transsion.dbdata.beans.cloud;

import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayVideoData;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\"\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0089\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u0003H\u0016J\u0010\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010.\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0018J\u0010\u0010/\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0018J\u000b\u00100\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u00107\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0018J\u0010\u00108\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0018J\u000b\u00109\u001a\u0004\u0018\u00010\bHÆ\u0003Jª\u0001\u0010:\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010;J\u0013\u0010<\u001a\u00020=2\b\u0010>\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010?\u001a\u00020\u0003HÖ\u0001J\t\u0010@\u001a\u00020\bHÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u0017\u0010\u0018R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u001a\u0010\u0018R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0013\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001cR\u001c\u0010\n\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001c\"\u0004\b\u001f\u0010 R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001cR\u0013\u0010\f\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001cR\u0013\u0010\r\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001cR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u001c\"\u0004\b%\u0010 R\u0015\u0010\u000f\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b&\u0010\u0018R\u0015\u0010\u0010\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b'\u0010\u0018R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u001c\"\u0004\b)\u0010 ¨\u0006A"}, d2 = {"Lcom/transsion/dbdata/beans/cloud/SearchResponseData;", "", "dataType", "", PlayAudioData.TAG_SIZE, "", "duration", "userId", "", "sourceId", "title", "mediaLibraryId", "mediaLibraryName", "createAt", "cover", "width", "height", "previewUrl", MethodDecl.initName, "(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V", "getDataType", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getSize", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getDuration", "getUserId", "()Ljava/lang/String;", "getSourceId", "getTitle", "setTitle", "(Ljava/lang/String;)V", "getMediaLibraryId", "getMediaLibraryName", "getCreateAt", "getCover", "setCover", "getWidth", "getHeight", "getPreviewUrl", "setPreviewUrl", "toPlayVideoData", "Lcom/transsion/dbdata/beans/media/PlayVideoData;", "listFlag", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "copy", "(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lcom/transsion/dbdata/beans/cloud/SearchResponseData;", "equals", "", "other", "hashCode", "toString", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SearchResponseData {
    private String cover;
    private final String createAt;
    private final Integer dataType;
    private final Long duration;
    private final Long height;
    private final String mediaLibraryId;
    private final String mediaLibraryName;
    private String previewUrl;
    private final Long size;
    private final String sourceId;
    private String title;
    private final String userId;
    private final Long width;

    public SearchResponseData(Integer num, Long l, Long l2, String str, String str2, String str3, String str4, String str5, String str6, String str7, Long l3, Long l4, String str8) {
        this.dataType = num;
        this.size = l;
        this.duration = l2;
        this.userId = str;
        this.sourceId = str2;
        this.title = str3;
        this.mediaLibraryId = str4;
        this.mediaLibraryName = str5;
        this.createAt = str6;
        this.cover = str7;
        this.width = l3;
        this.height = l4;
        this.previewUrl = str8;
    }

    public final Integer getDataType() {
        return this.dataType;
    }

    public final String getCover() {
        return this.cover;
    }

    public final Long getWidth() {
        return this.width;
    }

    public final Long getHeight() {
        return this.height;
    }

    public final String getPreviewUrl() {
        return this.previewUrl;
    }

    public final Long getSize() {
        return this.size;
    }

    public final Long getDuration() {
        return this.duration;
    }

    public final String getUserId() {
        return this.userId;
    }

    public final String getSourceId() {
        return this.sourceId;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getMediaLibraryId() {
        return this.mediaLibraryId;
    }

    public final String getMediaLibraryName() {
        return this.mediaLibraryName;
    }

    public final String getCreateAt() {
        return this.createAt;
    }

    public final SearchResponseData copy(Integer dataType, Long size, Long duration, String userId, String sourceId, String title, String mediaLibraryId, String mediaLibraryName, String createAt, String cover, Long width, Long height, String previewUrl) {
        return new SearchResponseData(dataType, size, duration, userId, sourceId, title, mediaLibraryId, mediaLibraryName, createAt, cover, width, height, previewUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SearchResponseData)) {
            return false;
        }
        SearchResponseData searchResponseData = (SearchResponseData) other;
        return y45.e(this.dataType, searchResponseData.dataType) && y45.e(this.size, searchResponseData.size) && y45.e(this.duration, searchResponseData.duration) && y45.e(this.userId, searchResponseData.userId) && y45.e(this.sourceId, searchResponseData.sourceId) && y45.e(this.title, searchResponseData.title) && y45.e(this.mediaLibraryId, searchResponseData.mediaLibraryId) && y45.e(this.mediaLibraryName, searchResponseData.mediaLibraryName) && y45.e(this.createAt, searchResponseData.createAt) && y45.e(this.cover, searchResponseData.cover) && y45.e(this.width, searchResponseData.width) && y45.e(this.height, searchResponseData.height) && y45.e(this.previewUrl, searchResponseData.previewUrl);
    }

    public final String getCover() {
        return this.cover;
    }

    public final String getCreateAt() {
        return this.createAt;
    }

    public final Integer getDataType() {
        return this.dataType;
    }

    public final Long getDuration() {
        return this.duration;
    }

    public final Long getHeight() {
        return this.height;
    }

    public final String getMediaLibraryId() {
        return this.mediaLibraryId;
    }

    public final String getMediaLibraryName() {
        return this.mediaLibraryName;
    }

    public final String getPreviewUrl() {
        return this.previewUrl;
    }

    public final Long getSize() {
        return this.size;
    }

    public final String getSourceId() {
        return this.sourceId;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getUserId() {
        return this.userId;
    }

    public final Long getWidth() {
        return this.width;
    }

    public int hashCode() {
        Integer num = this.dataType;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Long l = this.size;
        int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.duration;
        int iHashCode3 = (iHashCode2 + (l2 == null ? 0 : l2.hashCode())) * 31;
        String str = this.userId;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.sourceId;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.title;
        int iHashCode6 = (iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.mediaLibraryId;
        int iHashCode7 = (iHashCode6 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.mediaLibraryName;
        int iHashCode8 = (iHashCode7 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.createAt;
        int iHashCode9 = (iHashCode8 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.cover;
        int iHashCode10 = (iHashCode9 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Long l3 = this.width;
        int iHashCode11 = (iHashCode10 + (l3 == null ? 0 : l3.hashCode())) * 31;
        Long l4 = this.height;
        int iHashCode12 = (iHashCode11 + (l4 == null ? 0 : l4.hashCode())) * 31;
        String str8 = this.previewUrl;
        return iHashCode12 + (str8 != null ? str8.hashCode() : 0);
    }

    public final void setCover(String str) {
        this.cover = str;
    }

    public final void setPreviewUrl(String str) {
        this.previewUrl = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0021  */
    /* JADX WARN: Code duplicated, block: B:18:0x0039  */
    public PlayVideoData toPlayVideoData(int listFlag) {
        long jLongValue;
        long jLongValue2;
        PlayVideoData playVideoData = new PlayVideoData();
        playVideoData.playTitle = this.title;
        Long l = this.width;
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
        playVideoData.mKtFileId = this.sourceId;
        playVideoData.listFlag = listFlag;
        return playVideoData;
    }

    public String toString() {
        return "SearchResponseData(dataType=" + this.dataType + ", size=" + this.size + ", duration=" + this.duration + ", userId=" + this.userId + ", sourceId=" + this.sourceId + ", title=" + this.title + ", mediaLibraryId=" + this.mediaLibraryId + ", mediaLibraryName=" + this.mediaLibraryName + ", createAt=" + this.createAt + ", cover=" + this.cover + ", width=" + this.width + ", height=" + this.height + ", previewUrl=" + this.previewUrl + ")";
    }
}
