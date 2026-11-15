package com.transsion.commercialization.aha;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001e\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\n¨\u0006\u0017"}, d2 = {"Lcom/transsion/commercialization/aha/AhaGameQuery;", "Ljava/io/Serializable;", "pageNum", "", "pageSize", "<init>", "(II)V", "getPageNum", "()I", "setPageNum", "(I)V", "getPageSize", "setPageSize", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "Commercialization_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AhaGameQuery implements Serializable {

    @SerializedName("pageNum")
    private int pageNum;

    @SerializedName("pageSize")
    private int pageSize;

    /* JADX WARN: Illegal instructions before constructor call */
    public AhaGameQuery() {
        int i10 = 0;
        this(i10, i10, 3, null);
    }

    public static AhaGameQuery copy$default(AhaGameQuery ahaGameQuery, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = ahaGameQuery.pageNum;
        }
        if ((i12 & 2) != 0) {
            i11 = ahaGameQuery.pageSize;
        }
        return ahaGameQuery.copy(i10, i11);
    }

    public final int getPageNum() {
        return this.pageNum;
    }

    public final int getPageSize() {
        return this.pageSize;
    }

    public final AhaGameQuery copy(int pageNum, int pageSize) {
        return new AhaGameQuery(pageNum, pageSize);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AhaGameQuery)) {
            return false;
        }
        AhaGameQuery ahaGameQuery = (AhaGameQuery) other;
        return this.pageNum == ahaGameQuery.pageNum && this.pageSize == ahaGameQuery.pageSize;
    }

    public final int getPageNum() {
        return this.pageNum;
    }

    public final int getPageSize() {
        return this.pageSize;
    }

    public int hashCode() {
        return (this.pageNum * 31) + this.pageSize;
    }

    public final void setPageNum(int i10) {
        this.pageNum = i10;
    }

    public final void setPageSize(int i10) {
        this.pageSize = i10;
    }

    public String toString() {
        return "AhaGameQuery(pageNum=" + this.pageNum + ", pageSize=" + this.pageSize + ")";
    }

    public AhaGameQuery(int i10, int i11) {
        this.pageNum = i10;
        this.pageSize = i11;
    }

    public AhaGameQuery(int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i10, (i12 & 2) != 0 ? 10 : i11);
    }
}
