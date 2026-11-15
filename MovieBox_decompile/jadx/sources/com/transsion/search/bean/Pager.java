package com.transsion.search.bean;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;

@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J;\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00032\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0016\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000eR\u0016\u0010\b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000e¨\u0006\u001e"}, d2 = {"Lcom/transsion/search/bean/Pager;", "Ljava/io/Serializable;", "hasMore", "", "nextPage", "", "page", "perPage", "totalCount", "<init>", "(ZIIII)V", "getHasMore", "()Z", "getNextPage", "()I", "getPage", "getPerPage", "getTotalCount", "component1", "component2", "component3", "component4", "component5", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class Pager implements Serializable {

    @SerializedName("hasMore")
    private final boolean hasMore;

    @SerializedName("nextPage")
    private final int nextPage;

    @SerializedName("page")
    private final int page;

    @SerializedName("perPage")
    private final int perPage;

    @SerializedName("totalCount")
    private final int totalCount;

    public Pager(boolean z10, int i10, int i11, int i12, int i13) {
        this.hasMore = z10;
        this.nextPage = i10;
        this.page = i11;
        this.perPage = i12;
        this.totalCount = i13;
    }

    public static Pager copy$default(Pager pager, boolean z10, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            z10 = pager.hasMore;
        }
        if ((i14 & 2) != 0) {
            i10 = pager.nextPage;
        }
        int i15 = i10;
        if ((i14 & 4) != 0) {
            i11 = pager.page;
        }
        int i16 = i11;
        if ((i14 & 8) != 0) {
            i12 = pager.perPage;
        }
        int i17 = i12;
        if ((i14 & 16) != 0) {
            i13 = pager.totalCount;
        }
        return pager.copy(z10, i15, i16, i17, i13);
    }

    public final boolean getHasMore() {
        return this.hasMore;
    }

    public final int getNextPage() {
        return this.nextPage;
    }

    public final int getPage() {
        return this.page;
    }

    public final int getPerPage() {
        return this.perPage;
    }

    public final int getTotalCount() {
        return this.totalCount;
    }

    public final Pager copy(boolean hasMore, int nextPage, int page, int perPage, int totalCount) {
        return new Pager(hasMore, nextPage, page, perPage, totalCount);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Pager)) {
            return false;
        }
        Pager pager = (Pager) other;
        return this.hasMore == pager.hasMore && this.nextPage == pager.nextPage && this.page == pager.page && this.perPage == pager.perPage && this.totalCount == pager.totalCount;
    }

    public final boolean getHasMore() {
        return this.hasMore;
    }

    public final int getNextPage() {
        return this.nextPage;
    }

    public final int getPage() {
        return this.page;
    }

    public final int getPerPage() {
        return this.perPage;
    }

    public final int getTotalCount() {
        return this.totalCount;
    }

    public int hashCode() {
        return (((((((e.a(this.hasMore) * 31) + this.nextPage) * 31) + this.page) * 31) + this.perPage) * 31) + this.totalCount;
    }

    public String toString() {
        return "Pager(hasMore=" + this.hasMore + ", nextPage=" + this.nextPage + ", page=" + this.page + ", perPage=" + this.perPage + ", totalCount=" + this.totalCount + ")";
    }
}
