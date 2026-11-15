package com.transsion.dbdata.beans;

import android.net.Uri;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\t\u0012\b\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010\u001e\u001a\u00020\u0003H\u0016J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0014J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0018J\u000b\u0010$\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0018J\u0010\u0010&\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0018Jn\u0010'\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010(J\u0013\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,HÖ\u0003J\t\u0010-\u001a\u00020\u0006HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0011R\u0015\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0015\u0010\f\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u001c\u0010\u0018R\u0015\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u001d\u0010\u0018¨\u0006."}, d2 = {"Lcom/transsion/dbdata/beans/VideoCloudDataLocal;", "Lcom/transsion/dbdata/beans/VideoCloudData;", "localMediaName", "", "localMediaData", "localMediaId", "", "localMediaCoverUrl", "localMediaSize", "", "localMediaUri", "Landroid/net/Uri;", "localMediaDateModified", "localMediaDuring", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;Ljava/lang/Long;Ljava/lang/Long;)V", "getLocalMediaName", "()Ljava/lang/String;", "getLocalMediaData", "getLocalMediaId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getLocalMediaCoverUrl", "getLocalMediaSize", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getLocalMediaUri", "()Landroid/net/Uri;", "getLocalMediaDateModified", "getLocalMediaDuring", "toString", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;Ljava/lang/Long;Ljava/lang/Long;)Lcom/transsion/dbdata/beans/VideoCloudDataLocal;", "equals", "", "other", "", "hashCode", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VideoCloudDataLocal extends VideoCloudData {
    private final String localMediaCoverUrl;
    private final String localMediaData;
    private final Long localMediaDateModified;
    private final Long localMediaDuring;
    private final Integer localMediaId;
    private final String localMediaName;
    private final Long localMediaSize;
    private final Uri localMediaUri;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    public VideoCloudDataLocal(String str, String str2, Integer num, String str3, Long l, Uri uri, Long l2, Long l3) {
        Object[] objArr = 0 == true ? 1 : 0;
        super(null, null, null, null, null, null, null, null, null, null, 0L, null, null, null, objArr, null, 0, null, null, null, 1048575, null);
        this.localMediaName = str;
        this.localMediaData = str2;
        this.localMediaId = num;
        this.localMediaCoverUrl = str3;
        this.localMediaSize = l;
        this.localMediaUri = uri;
        this.localMediaDateModified = l2;
        this.localMediaDuring = l3;
    }

    public final String getLocalMediaName() {
        return this.localMediaName;
    }

    public final String getLocalMediaData() {
        return this.localMediaData;
    }

    public final Integer getLocalMediaId() {
        return this.localMediaId;
    }

    public final String getLocalMediaCoverUrl() {
        return this.localMediaCoverUrl;
    }

    public final Long getLocalMediaSize() {
        return this.localMediaSize;
    }

    public final Uri getLocalMediaUri() {
        return this.localMediaUri;
    }

    public final Long getLocalMediaDateModified() {
        return this.localMediaDateModified;
    }

    public final Long getLocalMediaDuring() {
        return this.localMediaDuring;
    }

    public final VideoCloudDataLocal copy(String localMediaName, String localMediaData, Integer localMediaId, String localMediaCoverUrl, Long localMediaSize, Uri localMediaUri, Long localMediaDateModified, Long localMediaDuring) {
        return new VideoCloudDataLocal(localMediaName, localMediaData, localMediaId, localMediaCoverUrl, localMediaSize, localMediaUri, localMediaDateModified, localMediaDuring);
    }

    @Override
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VideoCloudDataLocal)) {
            return false;
        }
        VideoCloudDataLocal videoCloudDataLocal = (VideoCloudDataLocal) other;
        return y45.e(this.localMediaName, videoCloudDataLocal.localMediaName) && y45.e(this.localMediaData, videoCloudDataLocal.localMediaData) && y45.e(this.localMediaId, videoCloudDataLocal.localMediaId) && y45.e(this.localMediaCoverUrl, videoCloudDataLocal.localMediaCoverUrl) && y45.e(this.localMediaSize, videoCloudDataLocal.localMediaSize) && y45.e(this.localMediaUri, videoCloudDataLocal.localMediaUri) && y45.e(this.localMediaDateModified, videoCloudDataLocal.localMediaDateModified) && y45.e(this.localMediaDuring, videoCloudDataLocal.localMediaDuring);
    }

    public final String getLocalMediaCoverUrl() {
        return this.localMediaCoverUrl;
    }

    public final String getLocalMediaData() {
        return this.localMediaData;
    }

    public final Long getLocalMediaDateModified() {
        return this.localMediaDateModified;
    }

    public final Long getLocalMediaDuring() {
        return this.localMediaDuring;
    }

    public final Integer getLocalMediaId() {
        return this.localMediaId;
    }

    public final String getLocalMediaName() {
        return this.localMediaName;
    }

    public final Long getLocalMediaSize() {
        return this.localMediaSize;
    }

    public final Uri getLocalMediaUri() {
        return this.localMediaUri;
    }

    public int hashCode() {
        String str = this.localMediaName;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.localMediaData;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.localMediaId;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        String str3 = this.localMediaCoverUrl;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Long l = this.localMediaSize;
        int iHashCode5 = (iHashCode4 + (l == null ? 0 : l.hashCode())) * 31;
        Uri uri = this.localMediaUri;
        int iHashCode6 = (iHashCode5 + (uri == null ? 0 : uri.hashCode())) * 31;
        Long l2 = this.localMediaDateModified;
        int iHashCode7 = (iHashCode6 + (l2 == null ? 0 : l2.hashCode())) * 31;
        Long l3 = this.localMediaDuring;
        return iHashCode7 + (l3 != null ? l3.hashCode() : 0);
    }

    @Override
    public String toString() {
        return "VideoCloudDataLocal(id=" + getId() + ", fileId=" + getFileId() + ", fileName=" + getFileName() + ", size=" + getSize() + ", duration=" + getDuration() + ", height=" + getHeight() + ", weight=" + getWeight() + ", watchStatus=" + getWatchStatus() + ", createAt=" + getCreateAt() + ", sharerNickname=" + getSharerNickname() + ", playDuration=" + getPlayDuration() + ", fileCoverPath=" + getFileCoverPath() + ", previewUrl=" + getPreviewUrl() + ", parentFileId=" + getParentFileId() + ", isExitLocal=" + getIsExitLocal() + ", localMediaName=" + this.localMediaName + ", localMediaData=" + this.localMediaData + ", localMediaId=" + this.localMediaId + ", localMediaCoverUrl=" + this.localMediaCoverUrl + ", localMediaSize=" + this.localMediaSize + ", localMediaUri=" + this.localMediaUri + ", localMediaDateModified=" + this.localMediaDateModified + ", localMediaDuring=" + this.localMediaDuring + ")";
    }
}
