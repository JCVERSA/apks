package com.transsion.dbdata.beans.media;

import androidx.annotation.Keep;
import com.lzy.okgo.model.Progress;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Keep
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0015\u001a\u00020\bHÆ\u0003J1\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001d"}, d2 = {"Lcom/transsion/dbdata/beans/media/VideoTotalTrack;", "Lcom/transsion/dbdata/beans/media/VideoTrackData;", "totalCountStr", "", "totalSizeStr", "totalCount", "", Progress.TOTAL_SIZE, "", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;IJ)V", "getTotalCountStr", "()Ljava/lang/String;", "getTotalSizeStr", "getTotalCount", "()I", "getTotalSize", "()J", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "toString", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VideoTotalTrack implements VideoTrackData {
    private final int totalCount;
    private final String totalCountStr;
    private final long totalSize;
    private final String totalSizeStr;

    public VideoTotalTrack() {
        this(null, null, 0, 0L, 15, null);
    }

    public static VideoTotalTrack copy$default(VideoTotalTrack videoTotalTrack, String str, String str2, int i, long j, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = videoTotalTrack.totalCountStr;
        }
        if ((i2 & 2) != 0) {
            str2 = videoTotalTrack.totalSizeStr;
        }
        String str3 = str2;
        if ((i2 & 4) != 0) {
            i = videoTotalTrack.totalCount;
        }
        int i3 = i;
        if ((i2 & 8) != 0) {
            j = videoTotalTrack.totalSize;
        }
        return videoTotalTrack.copy(str, str3, i3, j);
    }

    public final String getTotalCountStr() {
        return this.totalCountStr;
    }

    public final String getTotalSizeStr() {
        return this.totalSizeStr;
    }

    public final int getTotalCount() {
        return this.totalCount;
    }

    public final long getTotalSize() {
        return this.totalSize;
    }

    public final VideoTotalTrack copy(String totalCountStr, String totalSizeStr, int totalCount, long totalSize) {
        y45.j(totalCountStr, "totalCountStr");
        y45.j(totalSizeStr, "totalSizeStr");
        return new VideoTotalTrack(totalCountStr, totalSizeStr, totalCount, totalSize);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VideoTotalTrack)) {
            return false;
        }
        VideoTotalTrack videoTotalTrack = (VideoTotalTrack) other;
        return y45.e(this.totalCountStr, videoTotalTrack.totalCountStr) && y45.e(this.totalSizeStr, videoTotalTrack.totalSizeStr) && this.totalCount == videoTotalTrack.totalCount && this.totalSize == videoTotalTrack.totalSize;
    }

    public final int getTotalCount() {
        return this.totalCount;
    }

    public final String getTotalCountStr() {
        return this.totalCountStr;
    }

    public final long getTotalSize() {
        return this.totalSize;
    }

    public final String getTotalSizeStr() {
        return this.totalSizeStr;
    }

    public int hashCode() {
        return (((((this.totalCountStr.hashCode() * 31) + this.totalSizeStr.hashCode()) * 31) + Integer.hashCode(this.totalCount)) * 31) + Long.hashCode(this.totalSize);
    }

    public String toString() {
        return "VideoTotalTrack(totalCountStr=" + this.totalCountStr + ", totalSizeStr=" + this.totalSizeStr + ", totalCount=" + this.totalCount + ", totalSize=" + this.totalSize + ")";
    }

    public VideoTotalTrack(String str, String str2, int i, long j) {
        y45.j(str, "totalCountStr");
        y45.j(str2, "totalSizeStr");
        this.totalCountStr = str;
        this.totalSizeStr = str2;
        this.totalCount = i;
        this.totalSize = j;
    }

    public VideoTotalTrack(String str, String str2, int i, long j, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? 0 : i, (i2 & 8) != 0 ? 0L : j);
    }
}
