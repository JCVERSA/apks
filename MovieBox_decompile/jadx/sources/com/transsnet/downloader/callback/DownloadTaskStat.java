package com.transsnet.downloader.callback;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;

@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J1\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\fR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\n\"\u0004\b\u0010\u0010\fR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\n\"\u0004\b\u0012\u0010\f¨\u0006\u001f"}, d2 = {"Lcom/transsnet/downloader/callback/DownloadTaskStat;", "Ljava/io/Serializable;", "waitCount", "", "loadingCount", "errorCount", "doneCount", "<init>", "(IIII)V", "getWaitCount", "()I", "setWaitCount", "(I)V", "getLoadingCount", "setLoadingCount", "getErrorCount", "setErrorCount", "getDoneCount", "setDoneCount", "component1", "component2", "component3", "component4", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DownloadTaskStat implements Serializable {
    private int doneCount;
    private int errorCount;
    private int loadingCount;
    private int waitCount;

    public DownloadTaskStat(int i10, int i11, int i12, int i13) {
        this.waitCount = i10;
        this.loadingCount = i11;
        this.errorCount = i12;
        this.doneCount = i13;
    }

    public static DownloadTaskStat copy$default(DownloadTaskStat downloadTaskStat, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = downloadTaskStat.waitCount;
        }
        if ((i14 & 2) != 0) {
            i11 = downloadTaskStat.loadingCount;
        }
        if ((i14 & 4) != 0) {
            i12 = downloadTaskStat.errorCount;
        }
        if ((i14 & 8) != 0) {
            i13 = downloadTaskStat.doneCount;
        }
        return downloadTaskStat.copy(i10, i11, i12, i13);
    }

    public final int getWaitCount() {
        return this.waitCount;
    }

    public final int getLoadingCount() {
        return this.loadingCount;
    }

    public final int getErrorCount() {
        return this.errorCount;
    }

    public final int getDoneCount() {
        return this.doneCount;
    }

    public final DownloadTaskStat copy(int waitCount, int loadingCount, int errorCount, int doneCount) {
        return new DownloadTaskStat(waitCount, loadingCount, errorCount, doneCount);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DownloadTaskStat)) {
            return false;
        }
        DownloadTaskStat downloadTaskStat = (DownloadTaskStat) other;
        return this.waitCount == downloadTaskStat.waitCount && this.loadingCount == downloadTaskStat.loadingCount && this.errorCount == downloadTaskStat.errorCount && this.doneCount == downloadTaskStat.doneCount;
    }

    public final int getDoneCount() {
        return this.doneCount;
    }

    public final int getErrorCount() {
        return this.errorCount;
    }

    public final int getLoadingCount() {
        return this.loadingCount;
    }

    public final int getWaitCount() {
        return this.waitCount;
    }

    public int hashCode() {
        return (((((this.waitCount * 31) + this.loadingCount) * 31) + this.errorCount) * 31) + this.doneCount;
    }

    public final void setDoneCount(int i10) {
        this.doneCount = i10;
    }

    public final void setErrorCount(int i10) {
        this.errorCount = i10;
    }

    public final void setLoadingCount(int i10) {
        this.loadingCount = i10;
    }

    public final void setWaitCount(int i10) {
        this.waitCount = i10;
    }

    public String toString() {
        return "DownloadTaskStat(waitCount=" + this.waitCount + ", loadingCount=" + this.loadingCount + ", errorCount=" + this.errorCount + ", doneCount=" + this.doneCount + ")";
    }
}
