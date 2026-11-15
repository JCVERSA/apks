package com.transsion.moviedetailapi.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.collection.s;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Keep
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0018\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J1\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\u0006\u0010\u001d\u001a\u00020\u0003J\u0013\u0010\u001e\u001a\u00020\u00072\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\u0003HÖ\u0001J\t\u0010\"\u001a\u00020#HÖ\u0001J\u0016\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u0003R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\f\"\u0004\b\u0017\u0010\u000e¨\u0006)"}, d2 = {"Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;", "Landroid/os/Parcelable;", "resolution", "", "averageSize", "", "isSelected", "", "requireMemberType", "<init>", "(IJZI)V", "getResolution", "()I", "setResolution", "(I)V", "getAverageSize", "()J", "setAverageSize", "(J)V", "()Z", "setSelected", "(Z)V", "getRequireMemberType", "setRequireMemberType", "component1", "component2", "component3", "component4", "copy", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DownloadResolutionItem implements Parcelable {
    public static final Parcelable.Creator<DownloadResolutionItem> CREATOR = new a();
    private long averageSize;
    private transient boolean isSelected;
    private int requireMemberType;
    private int resolution;

    public static final class a implements Parcelable.Creator {
        @Override
        public final DownloadResolutionItem createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new DownloadResolutionItem(parcel.readInt(), parcel.readLong(), parcel.readInt() != 0, parcel.readInt());
        }

        @Override
        public final DownloadResolutionItem[] newArray(int i10) {
            return new DownloadResolutionItem[i10];
        }
    }

    public DownloadResolutionItem(int i10, long j10, boolean z10, int i11) {
        this.resolution = i10;
        this.averageSize = j10;
        this.isSelected = z10;
        this.requireMemberType = i11;
    }

    public static DownloadResolutionItem copy$default(DownloadResolutionItem downloadResolutionItem, int i10, long j10, boolean z10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = downloadResolutionItem.resolution;
        }
        if ((i12 & 2) != 0) {
            j10 = downloadResolutionItem.averageSize;
        }
        long j11 = j10;
        if ((i12 & 4) != 0) {
            z10 = downloadResolutionItem.isSelected;
        }
        boolean z11 = z10;
        if ((i12 & 8) != 0) {
            i11 = downloadResolutionItem.requireMemberType;
        }
        return downloadResolutionItem.copy(i10, j11, z11, i11);
    }

    public final int getResolution() {
        return this.resolution;
    }

    public final long getAverageSize() {
        return this.averageSize;
    }

    public final boolean getIsSelected() {
        return this.isSelected;
    }

    public final int getRequireMemberType() {
        return this.requireMemberType;
    }

    public final DownloadResolutionItem copy(int resolution, long averageSize, boolean isSelected, int requireMemberType) {
        return new DownloadResolutionItem(resolution, averageSize, isSelected, requireMemberType);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DownloadResolutionItem)) {
            return false;
        }
        DownloadResolutionItem downloadResolutionItem = (DownloadResolutionItem) other;
        return this.resolution == downloadResolutionItem.resolution && this.averageSize == downloadResolutionItem.averageSize && this.isSelected == downloadResolutionItem.isSelected && this.requireMemberType == downloadResolutionItem.requireMemberType;
    }

    public final long getAverageSize() {
        return this.averageSize;
    }

    public final int getRequireMemberType() {
        return this.requireMemberType;
    }

    public final int getResolution() {
        return this.resolution;
    }

    public int hashCode() {
        return (((((this.resolution * 31) + s.a(this.averageSize)) * 31) + e.a(this.isSelected)) * 31) + this.requireMemberType;
    }

    public final boolean isSelected() {
        return this.isSelected;
    }

    public final void setAverageSize(long j10) {
        this.averageSize = j10;
    }

    public final void setRequireMemberType(int i10) {
        this.requireMemberType = i10;
    }

    public final void setResolution(int i10) {
        this.resolution = i10;
    }

    public final void setSelected(boolean z10) {
        this.isSelected = z10;
    }

    public String toString() {
        return "DownloadResolutionItem(resolution=" + this.resolution + ", averageSize=" + this.averageSize + ", isSelected=" + this.isSelected + ", requireMemberType=" + this.requireMemberType + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.resolution);
        dest.writeLong(this.averageSize);
        dest.writeInt(this.isSelected ? 1 : 0);
        dest.writeInt(this.requireMemberType);
    }

    public DownloadResolutionItem(int i10, long j10, boolean z10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, j10, (i12 & 4) != 0 ? false : z10, i11);
    }
}
