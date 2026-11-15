package com.transsion.moviedetailapi.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Keep
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJJ\u0010\u001c\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020#HÖ\u0001J\t\u0010$\u001a\u00020%HÖ\u0001R\"\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u000e\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u000e\u001a\u0004\b\u000f\u0010\u000b\"\u0004\b\u0010\u0010\rR\"\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u000e\u001a\u0004\b\u0011\u0010\u000b\"\u0004\b\u0012\u0010\rR\"\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u000e\u001a\u0004\b\u0013\u0010\u000b\"\u0004\b\u0014\u0010\rR\"\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u000e\u001a\u0004\b\u0015\u0010\u000b\"\u0004\b\u0016\u0010\r¨\u0006&"}, d2 = {"Lcom/transsion/moviedetailapi/bean/Stat;", "Ljava/io/Serializable;", "commentCount", "", "likeCount", "mediaViewCount", "shareCount", "viewCount", "<init>", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V", "getCommentCount", "()Ljava/lang/Long;", "setCommentCount", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getLikeCount", "setLikeCount", "getMediaViewCount", "setMediaViewCount", "getShareCount", "setShareCount", "getViewCount", "setViewCount", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lcom/transsion/moviedetailapi/bean/Stat;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class Stat implements Serializable {

    @SerializedName("commentCount")
    private Long commentCount;

    @SerializedName("likeCount")
    private Long likeCount;

    @SerializedName("mediaViewCount")
    private Long mediaViewCount;

    @SerializedName("shareCount")
    private Long shareCount;

    @SerializedName("viewCount")
    private Long viewCount;

    public Stat(Long l10, Long l11, Long l12, Long l13, Long l14) {
        this.commentCount = l10;
        this.likeCount = l11;
        this.mediaViewCount = l12;
        this.shareCount = l13;
        this.viewCount = l14;
    }

    public static Stat copy$default(Stat stat, Long l10, Long l11, Long l12, Long l13, Long l14, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            l10 = stat.commentCount;
        }
        if ((i10 & 2) != 0) {
            l11 = stat.likeCount;
        }
        Long l15 = l11;
        if ((i10 & 4) != 0) {
            l12 = stat.mediaViewCount;
        }
        Long l16 = l12;
        if ((i10 & 8) != 0) {
            l13 = stat.shareCount;
        }
        Long l17 = l13;
        if ((i10 & 16) != 0) {
            l14 = stat.viewCount;
        }
        return stat.copy(l10, l15, l16, l17, l14);
    }

    public final Long getCommentCount() {
        return this.commentCount;
    }

    public final Long getLikeCount() {
        return this.likeCount;
    }

    public final Long getMediaViewCount() {
        return this.mediaViewCount;
    }

    public final Long getShareCount() {
        return this.shareCount;
    }

    public final Long getViewCount() {
        return this.viewCount;
    }

    public final Stat copy(Long commentCount, Long likeCount, Long mediaViewCount, Long shareCount, Long viewCount) {
        return new Stat(commentCount, likeCount, mediaViewCount, shareCount, viewCount);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Stat)) {
            return false;
        }
        Stat stat = (Stat) other;
        return Intrinsics.c(this.commentCount, stat.commentCount) && Intrinsics.c(this.likeCount, stat.likeCount) && Intrinsics.c(this.mediaViewCount, stat.mediaViewCount) && Intrinsics.c(this.shareCount, stat.shareCount) && Intrinsics.c(this.viewCount, stat.viewCount);
    }

    public final Long getCommentCount() {
        return this.commentCount;
    }

    public final Long getLikeCount() {
        return this.likeCount;
    }

    public final Long getMediaViewCount() {
        return this.mediaViewCount;
    }

    public final Long getShareCount() {
        return this.shareCount;
    }

    public final Long getViewCount() {
        return this.viewCount;
    }

    public int hashCode() {
        Long l10 = this.commentCount;
        int iHashCode = (l10 == null ? 0 : l10.hashCode()) * 31;
        Long l11 = this.likeCount;
        int iHashCode2 = (iHashCode + (l11 == null ? 0 : l11.hashCode())) * 31;
        Long l12 = this.mediaViewCount;
        int iHashCode3 = (iHashCode2 + (l12 == null ? 0 : l12.hashCode())) * 31;
        Long l13 = this.shareCount;
        int iHashCode4 = (iHashCode3 + (l13 == null ? 0 : l13.hashCode())) * 31;
        Long l14 = this.viewCount;
        return iHashCode4 + (l14 != null ? l14.hashCode() : 0);
    }

    public final void setCommentCount(Long l10) {
        this.commentCount = l10;
    }

    public final void setLikeCount(Long l10) {
        this.likeCount = l10;
    }

    public final void setMediaViewCount(Long l10) {
        this.mediaViewCount = l10;
    }

    public final void setShareCount(Long l10) {
        this.shareCount = l10;
    }

    public final void setViewCount(Long l10) {
        this.viewCount = l10;
    }

    public String toString() {
        return "Stat(commentCount=" + this.commentCount + ", likeCount=" + this.likeCount + ", mediaViewCount=" + this.mediaViewCount + ", shareCount=" + this.shareCount + ", viewCount=" + this.viewCount + ")";
    }
}
