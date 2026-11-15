package com.transsion.search_pugc.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.collection.s;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Keep
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0014\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\bHÆ\u0003J\t\u0010\u001a\u001a\u00020\nHÆ\u0003J;\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0006\u0010\u001c\u001a\u00020\bJ\u0013\u0010\u001d\u001a\u00020\u00032\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÖ\u0003J\t\u0010 \u001a\u00020\bHÖ\u0001J\t\u0010!\u001a\u00020\u0005HÖ\u0001J\u0016\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006'"}, d2 = {"Lcom/transsion/search_pugc/bean/UGCPager;", "Landroid/os/Parcelable;", "hasMore", "", "nextPage", "", "page", "perPage", "", "totalCount", "", "<init>", "(ZLjava/lang/String;Ljava/lang/String;IJ)V", "getHasMore", "()Z", "getNextPage", "()Ljava/lang/String;", "getPage", "getPerPage", "()I", "getTotalCount", "()J", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class UGCPager implements Parcelable {
    public static final Parcelable.Creator<UGCPager> CREATOR = new a();

    @SerializedName("hasMore")
    private final boolean hasMore;

    @SerializedName("nextPage")
    private final String nextPage;

    @SerializedName("page")
    private final String page;

    @SerializedName("perPage")
    private final int perPage;

    @SerializedName("totalCount")
    private final long totalCount;

    public static final class a implements Parcelable.Creator {
        @Override
        public final UGCPager createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new UGCPager(parcel.readInt() != 0, parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readLong());
        }

        @Override
        public final UGCPager[] newArray(int i10) {
            return new UGCPager[i10];
        }
    }

    public UGCPager() {
        this(false, null, null, 0, 0L, 31, null);
    }

    public static UGCPager copy$default(UGCPager uGCPager, boolean z10, String str, String str2, int i10, long j10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = uGCPager.hasMore;
        }
        if ((i11 & 2) != 0) {
            str = uGCPager.nextPage;
        }
        String str3 = str;
        if ((i11 & 4) != 0) {
            str2 = uGCPager.page;
        }
        String str4 = str2;
        if ((i11 & 8) != 0) {
            i10 = uGCPager.perPage;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            j10 = uGCPager.totalCount;
        }
        return uGCPager.copy(z10, str3, str4, i12, j10);
    }

    public final boolean getHasMore() {
        return this.hasMore;
    }

    public final String getNextPage() {
        return this.nextPage;
    }

    public final String getPage() {
        return this.page;
    }

    public final int getPerPage() {
        return this.perPage;
    }

    public final long getTotalCount() {
        return this.totalCount;
    }

    public final UGCPager copy(boolean hasMore, String nextPage, String page, int perPage, long totalCount) {
        Intrinsics.h(nextPage, "nextPage");
        Intrinsics.h(page, "page");
        return new UGCPager(hasMore, nextPage, page, perPage, totalCount);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCPager)) {
            return false;
        }
        UGCPager uGCPager = (UGCPager) other;
        return this.hasMore == uGCPager.hasMore && Intrinsics.c(this.nextPage, uGCPager.nextPage) && Intrinsics.c(this.page, uGCPager.page) && this.perPage == uGCPager.perPage && this.totalCount == uGCPager.totalCount;
    }

    public final boolean getHasMore() {
        return this.hasMore;
    }

    public final String getNextPage() {
        return this.nextPage;
    }

    public final String getPage() {
        return this.page;
    }

    public final int getPerPage() {
        return this.perPage;
    }

    public final long getTotalCount() {
        return this.totalCount;
    }

    public int hashCode() {
        return (((((((e.a(this.hasMore) * 31) + this.nextPage.hashCode()) * 31) + this.page.hashCode()) * 31) + this.perPage) * 31) + s.a(this.totalCount);
    }

    public String toString() {
        return "UGCPager(hasMore=" + this.hasMore + ", nextPage=" + this.nextPage + ", page=" + this.page + ", perPage=" + this.perPage + ", totalCount=" + this.totalCount + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.hasMore ? 1 : 0);
        dest.writeString(this.nextPage);
        dest.writeString(this.page);
        dest.writeInt(this.perPage);
        dest.writeLong(this.totalCount);
    }

    public UGCPager(boolean z10, String nextPage, String page, int i10, long j10) {
        Intrinsics.h(nextPage, "nextPage");
        Intrinsics.h(page, "page");
        this.hasMore = z10;
        this.nextPage = nextPage;
        this.page = page;
        this.perPage = i10;
        this.totalCount = j10;
    }

    public UGCPager(boolean z10, String str, String str2, int i10, long j10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? false : z10, (i11 & 2) != 0 ? "" : str, (i11 & 4) == 0 ? str2 : "", (i11 & 8) == 0 ? i10 : 0, (i11 & 16) != 0 ? 0L : j10);
    }
}
