package com.cloud.tmc.ad.bean;

import androidx.collection.s;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b%\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B_\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJ\t\u0010(\u001a\u00020\u0003HÆ\u0003J\t\u0010)\u001a\u00020\u0003HÆ\u0003J\t\u0010*\u001a\u00020\u0006HÆ\u0003J\t\u0010+\u001a\u00020\u0003HÆ\u0003J\t\u0010,\u001a\u00020\u0006HÆ\u0003J\t\u0010-\u001a\u00020\nHÆ\u0003J\t\u0010.\u001a\u00020\u0003HÆ\u0003J\t\u0010/\u001a\u00020\u0003HÆ\u0003J\t\u00100\u001a\u00020\u000eHÆ\u0003Jc\u00101\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u000eHÆ\u0001J\u0013\u00102\u001a\u00020\u000e2\b\u00103\u001a\u0004\u0018\u000104HÖ\u0003J\t\u00105\u001a\u00020\u0003HÖ\u0001J\t\u00106\u001a\u00020\nHÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\u0011\"\u0004\b\u0019\u0010\u0013R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0011\"\u0004\b#\u0010\u0013R\u001a\u0010\f\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0011\"\u0004\b%\u0010\u0013R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u001f\"\u0004\b'\u0010!¨\u00067"}, d2 = {"Lcom/cloud/tmc/ad/bean/AdShowBean;", "Ljava/io/Serializable;", "imageWidth", "", "imageHeight", "showTs", "", "isEffectiveShow", "showDuration", "showArea", "", "showReportTimeType", "showTimes", "isClose", "", "(IIJIJLjava/lang/String;IIZ)V", "getImageHeight", "()I", "setImageHeight", "(I)V", "getImageWidth", "setImageWidth", "()Z", "setClose", "(Z)V", "setEffectiveShow", "getShowArea", "()Ljava/lang/String;", "setShowArea", "(Ljava/lang/String;)V", "getShowDuration", "()J", "setShowDuration", "(J)V", "getShowReportTimeType", "setShowReportTimeType", "getShowTimes", "setShowTimes", "getShowTs", "setShowTs", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AdShowBean implements Serializable {
    private int imageHeight;
    private int imageWidth;
    private boolean isClose;
    private int isEffectiveShow;
    private String showArea;
    private long showDuration;
    private int showReportTimeType;
    private int showTimes;
    private long showTs;

    public AdShowBean() {
        this(0, 0, 0L, 0, 0L, null, 0, 0, false, 511, null);
    }

    public final int getImageWidth() {
        return this.imageWidth;
    }

    public final int getImageHeight() {
        return this.imageHeight;
    }

    public final long getShowTs() {
        return this.showTs;
    }

    public final int getIsEffectiveShow() {
        return this.isEffectiveShow;
    }

    public final long getShowDuration() {
        return this.showDuration;
    }

    public final String getShowArea() {
        return this.showArea;
    }

    public final int getShowReportTimeType() {
        return this.showReportTimeType;
    }

    public final int getShowTimes() {
        return this.showTimes;
    }

    public final boolean getIsClose() {
        return this.isClose;
    }

    public final AdShowBean copy(int imageWidth, int imageHeight, long showTs, int isEffectiveShow, long showDuration, String showArea, int showReportTimeType, int showTimes, boolean isClose) {
        Intrinsics.h(showArea, "showArea");
        return new AdShowBean(imageWidth, imageHeight, showTs, isEffectiveShow, showDuration, showArea, showReportTimeType, showTimes, isClose);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AdShowBean)) {
            return false;
        }
        AdShowBean adShowBean = (AdShowBean) other;
        return this.imageWidth == adShowBean.imageWidth && this.imageHeight == adShowBean.imageHeight && this.showTs == adShowBean.showTs && this.isEffectiveShow == adShowBean.isEffectiveShow && this.showDuration == adShowBean.showDuration && Intrinsics.c(this.showArea, adShowBean.showArea) && this.showReportTimeType == adShowBean.showReportTimeType && this.showTimes == adShowBean.showTimes && this.isClose == adShowBean.isClose;
    }

    public final int getImageHeight() {
        return this.imageHeight;
    }

    public final int getImageWidth() {
        return this.imageWidth;
    }

    public final String getShowArea() {
        return this.showArea;
    }

    public final long getShowDuration() {
        return this.showDuration;
    }

    public final int getShowReportTimeType() {
        return this.showReportTimeType;
    }

    public final int getShowTimes() {
        return this.showTimes;
    }

    public final long getShowTs() {
        return this.showTs;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [int] */
    /* JADX WARN: Type inference failed for: r1v11, types: [int] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    public int hashCode() {
        int iA = ((((((((((((((this.imageWidth * 31) + this.imageHeight) * 31) + s.a(this.showTs)) * 31) + this.isEffectiveShow) * 31) + s.a(this.showDuration)) * 31) + this.showArea.hashCode()) * 31) + this.showReportTimeType) * 31) + this.showTimes) * 31;
        boolean z10 = this.isClose;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        return iA + r10;
    }

    public final boolean isClose() {
        return this.isClose;
    }

    public final int isEffectiveShow() {
        return this.isEffectiveShow;
    }

    public final void setClose(boolean z10) {
        this.isClose = z10;
    }

    public final void setEffectiveShow(int i10) {
        this.isEffectiveShow = i10;
    }

    public final void setImageHeight(int i10) {
        this.imageHeight = i10;
    }

    public final void setImageWidth(int i10) {
        this.imageWidth = i10;
    }

    public final void setShowArea(String str) {
        Intrinsics.h(str, "<set-?>");
        this.showArea = str;
    }

    public final void setShowDuration(long j10) {
        this.showDuration = j10;
    }

    public final void setShowReportTimeType(int i10) {
        this.showReportTimeType = i10;
    }

    public final void setShowTimes(int i10) {
        this.showTimes = i10;
    }

    public final void setShowTs(long j10) {
        this.showTs = j10;
    }

    public String toString() {
        return "AdShowBean(imageWidth=" + this.imageWidth + ", imageHeight=" + this.imageHeight + ", showTs=" + this.showTs + ", isEffectiveShow=" + this.isEffectiveShow + ", showDuration=" + this.showDuration + ", showArea=" + this.showArea + ", showReportTimeType=" + this.showReportTimeType + ", showTimes=" + this.showTimes + ", isClose=" + this.isClose + ")";
    }

    public AdShowBean(int i10, int i11, long j10, int i12, long j11, String showArea, int i13, int i14, boolean z10) {
        Intrinsics.h(showArea, "showArea");
        this.imageWidth = i10;
        this.imageHeight = i11;
        this.showTs = j10;
        this.isEffectiveShow = i12;
        this.showDuration = j11;
        this.showArea = showArea;
        this.showReportTimeType = i13;
        this.showTimes = i14;
        this.isClose = z10;
    }

    public AdShowBean(int i10, int i11, long j10, int i12, long j11, String str, int i13, int i14, boolean z10, int i15, DefaultConstructorMarker defaultConstructorMarker) {
        this((i15 & 1) != 0 ? 0 : i10, (i15 & 2) != 0 ? 0 : i11, (i15 & 4) != 0 ? 0L : j10, (i15 & 8) != 0 ? 0 : i12, (i15 & 16) == 0 ? j11 : 0L, (i15 & 32) != 0 ? "" : str, (i15 & 64) != 0 ? 0 : i13, (i15 & 128) != 0 ? 0 : i14, (i15 & 256) == 0 ? z10 : false);
    }
}
