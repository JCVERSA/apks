package com.transsion.moviedetailapi.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Keep
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0015\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0003J\t\u0010\u001c\u001a\u00020\u000bHÆ\u0003JE\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b2\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0006\u0010\u001e\u001a\u00020\u0003J\u0013\u0010\u001f\u001a\u00020\u000b2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020\u0003HÖ\u0001J\t\u0010#\u001a\u00020\u0006HÖ\u0001J\u0016\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006)"}, d2 = {"Lcom/transsion/moviedetailapi/bean/ResourcesSeason;", "Landroid/os/Parcelable;", "se", "", "maxEp", "allEp", "", "resolutions", "", "Lcom/transsion/moviedetailapi/bean/ResolutionItem;", "isSelected", "", "<init>", "(IILjava/lang/String;Ljava/util/List;Z)V", "getSe", "()I", "getMaxEp", "getAllEp", "()Ljava/lang/String;", "getResolutions", "()Ljava/util/List;", "()Z", "setSelected", "(Z)V", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ResourcesSeason implements Parcelable {
    public static final Parcelable.Creator<ResourcesSeason> CREATOR = new a();
    private final String allEp;
    private transient boolean isSelected;
    private final int maxEp;
    private final List<ResolutionItem> resolutions;
    private final int se;

    public static final class a implements Parcelable.Creator {
        @Override
        public final ResourcesSeason createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            int i10 = parcel.readInt();
            int i11 = parcel.readInt();
            String string = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i12 = parcel.readInt();
                arrayList = new ArrayList(i12);
                for (int i13 = 0; i13 != i12; i13++) {
                    arrayList.add(ResolutionItem.CREATOR.createFromParcel(parcel));
                }
            }
            return new ResourcesSeason(i10, i11, string, arrayList, parcel.readInt() != 0);
        }

        @Override
        public final ResourcesSeason[] newArray(int i10) {
            return new ResourcesSeason[i10];
        }
    }

    public ResourcesSeason(int i10, int i11, String str, List<ResolutionItem> list, boolean z10) {
        this.se = i10;
        this.maxEp = i11;
        this.allEp = str;
        this.resolutions = list;
        this.isSelected = z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ResourcesSeason copy$default(ResourcesSeason resourcesSeason, int i10, int i11, String str, List list, boolean z10, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = resourcesSeason.se;
        }
        if ((i12 & 2) != 0) {
            i11 = resourcesSeason.maxEp;
        }
        int i13 = i11;
        if ((i12 & 4) != 0) {
            str = resourcesSeason.allEp;
        }
        String str2 = str;
        if ((i12 & 8) != 0) {
            list = resourcesSeason.resolutions;
        }
        List list2 = list;
        if ((i12 & 16) != 0) {
            z10 = resourcesSeason.isSelected;
        }
        return resourcesSeason.copy(i10, i13, str2, list2, z10);
    }

    public final int getSe() {
        return this.se;
    }

    public final int getMaxEp() {
        return this.maxEp;
    }

    public final String getAllEp() {
        return this.allEp;
    }

    public final List<ResolutionItem> component4() {
        return this.resolutions;
    }

    public final boolean getIsSelected() {
        return this.isSelected;
    }

    public final ResourcesSeason copy(int se2, int maxEp, String allEp, List<ResolutionItem> resolutions, boolean isSelected) {
        return new ResourcesSeason(se2, maxEp, allEp, resolutions, isSelected);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ResourcesSeason)) {
            return false;
        }
        ResourcesSeason resourcesSeason = (ResourcesSeason) other;
        return this.se == resourcesSeason.se && this.maxEp == resourcesSeason.maxEp && Intrinsics.c(this.allEp, resourcesSeason.allEp) && Intrinsics.c(this.resolutions, resourcesSeason.resolutions) && this.isSelected == resourcesSeason.isSelected;
    }

    public final String getAllEp() {
        return this.allEp;
    }

    public final int getMaxEp() {
        return this.maxEp;
    }

    public final List<ResolutionItem> getResolutions() {
        return this.resolutions;
    }

    public final int getSe() {
        return this.se;
    }

    public int hashCode() {
        int i10 = ((this.se * 31) + this.maxEp) * 31;
        String str = this.allEp;
        int iHashCode = (i10 + (str == null ? 0 : str.hashCode())) * 31;
        List<ResolutionItem> list = this.resolutions;
        return ((iHashCode + (list != null ? list.hashCode() : 0)) * 31) + e.a(this.isSelected);
    }

    public final boolean isSelected() {
        return this.isSelected;
    }

    public final void setSelected(boolean z10) {
        this.isSelected = z10;
    }

    public String toString() {
        return "ResourcesSeason(se=" + this.se + ", maxEp=" + this.maxEp + ", allEp=" + this.allEp + ", resolutions=" + this.resolutions + ", isSelected=" + this.isSelected + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.se);
        dest.writeInt(this.maxEp);
        dest.writeString(this.allEp);
        List<ResolutionItem> list = this.resolutions;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<ResolutionItem> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        dest.writeInt(this.isSelected ? 1 : 0);
    }

    public ResourcesSeason(int i10, int i11, String str, List list, boolean z10, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11, str, (i12 & 8) != 0 ? null : list, (i12 & 16) != 0 ? false : z10);
    }
}
