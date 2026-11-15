package com.transsion.room.sub.bean.likes;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Keep
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u001c\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u001f\u001a\u00020\bHÆ\u0003J\t\u0010 \u001a\u00020\bHÆ\u0003J?\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\bHÆ\u0001J\u0006\u0010\"\u001a\u00020\bJ\u0013\u0010#\u001a\u00020\u00032\b\u0010$\u001a\u0004\u0018\u00010%HÖ\u0003J\t\u0010&\u001a\u00020\bHÖ\u0001J\t\u0010'\u001a\u00020\u0005HÖ\u0001J\u0016\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0011\"\u0004\b\u0015\u0010\u0013R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\t\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0017\"\u0004\b\u001b\u0010\u0019¨\u0006-"}, d2 = {"Lcom/transsion/room/sub/bean/likes/PagerInfoLikes;", "Landroid/os/Parcelable;", "hasMore", "", "nextPage", "", "page", "perPage", "", "totalCount", "<init>", "(ZLjava/lang/String;Ljava/lang/String;II)V", "getHasMore", "()Z", "setHasMore", "(Z)V", "getNextPage", "()Ljava/lang/String;", "setNextPage", "(Ljava/lang/String;)V", "getPage", "setPage", "getPerPage", "()I", "setPerPage", "(I)V", "getTotalCount", "setTotalCount", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PagerInfoLikes implements Parcelable {
    public static final Parcelable.Creator<PagerInfoLikes> CREATOR = new a();
    private boolean hasMore;
    private String nextPage;
    private String page;
    private int perPage;
    private int totalCount;

    public static final class a implements Parcelable.Creator {
        @Override
        public final PagerInfoLikes createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new PagerInfoLikes(parcel.readInt() != 0, parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt());
        }

        @Override
        public final PagerInfoLikes[] newArray(int i10) {
            return new PagerInfoLikes[i10];
        }
    }

    public PagerInfoLikes() {
        this(false, null, null, 0, 0, 31, null);
    }

    public static PagerInfoLikes copy$default(PagerInfoLikes pagerInfoLikes, boolean z10, String str, String str2, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            z10 = pagerInfoLikes.hasMore;
        }
        if ((i12 & 2) != 0) {
            str = pagerInfoLikes.nextPage;
        }
        String str3 = str;
        if ((i12 & 4) != 0) {
            str2 = pagerInfoLikes.page;
        }
        String str4 = str2;
        if ((i12 & 8) != 0) {
            i10 = pagerInfoLikes.perPage;
        }
        int i13 = i10;
        if ((i12 & 16) != 0) {
            i11 = pagerInfoLikes.totalCount;
        }
        return pagerInfoLikes.copy(z10, str3, str4, i13, i11);
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

    public final int getTotalCount() {
        return this.totalCount;
    }

    public final PagerInfoLikes copy(boolean hasMore, String nextPage, String page, int perPage, int totalCount) {
        return new PagerInfoLikes(hasMore, nextPage, page, perPage, totalCount);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PagerInfoLikes)) {
            return false;
        }
        PagerInfoLikes pagerInfoLikes = (PagerInfoLikes) other;
        return this.hasMore == pagerInfoLikes.hasMore && Intrinsics.c(this.nextPage, pagerInfoLikes.nextPage) && Intrinsics.c(this.page, pagerInfoLikes.page) && this.perPage == pagerInfoLikes.perPage && this.totalCount == pagerInfoLikes.totalCount;
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

    public final int getTotalCount() {
        return this.totalCount;
    }

    public int hashCode() {
        int iA = e.a(this.hasMore) * 31;
        String str = this.nextPage;
        int iHashCode = (iA + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.page;
        return ((((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.perPage) * 31) + this.totalCount;
    }

    public final void setHasMore(boolean z10) {
        this.hasMore = z10;
    }

    public final void setNextPage(String str) {
        this.nextPage = str;
    }

    public final void setPage(String str) {
        this.page = str;
    }

    public final void setPerPage(int i10) {
        this.perPage = i10;
    }

    public final void setTotalCount(int i10) {
        this.totalCount = i10;
    }

    public String toString() {
        return "PagerInfoLikes(hasMore=" + this.hasMore + ", nextPage=" + this.nextPage + ", page=" + this.page + ", perPage=" + this.perPage + ", totalCount=" + this.totalCount + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.hasMore ? 1 : 0);
        dest.writeString(this.nextPage);
        dest.writeString(this.page);
        dest.writeInt(this.perPage);
        dest.writeInt(this.totalCount);
    }

    public PagerInfoLikes(boolean z10, String str, String str2, int i10, int i11) {
        this.hasMore = z10;
        this.nextPage = str;
        this.page = str2;
        this.perPage = i10;
        this.totalCount = i11;
    }

    public PagerInfoLikes(boolean z10, String str, String str2, int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? false : z10, (i12 & 2) != 0 ? null : str, (i12 & 4) == 0 ? str2 : null, (i12 & 8) != 0 ? 0 : i10, (i12 & 16) != 0 ? 0 : i11);
    }
}
