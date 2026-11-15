package com.transsion.push.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\u0010\u001a\u00020\u0011J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0011R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\n¨\u0006\u001d"}, d2 = {"Lcom/transsion/push/bean/CoverInfoMatch;", "Landroid/os/Parcelable;", "url", "", "id", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getUrl", "()Ljava/lang/String;", "setUrl", "(Ljava/lang/String;)V", "getId", "setId", "component1", "component2", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "push_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CoverInfoMatch implements Parcelable {
    public static final Parcelable.Creator<CoverInfoMatch> CREATOR = new Creator();
    private String id;
    private String url;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Creator implements Parcelable.Creator<CoverInfoMatch> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final CoverInfoMatch createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new CoverInfoMatch(parcel.readString(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final CoverInfoMatch[] newArray(int i10) {
            return new CoverInfoMatch[i10];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CoverInfoMatch() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public static CoverInfoMatch copy$default(CoverInfoMatch coverInfoMatch, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = coverInfoMatch.url;
        }
        if ((i10 & 2) != 0) {
            str2 = coverInfoMatch.id;
        }
        return coverInfoMatch.copy(str, str2);
    }

    public final String getUrl() {
        return this.url;
    }

    public final String getId() {
        return this.id;
    }

    public final CoverInfoMatch copy(String url, String id2) {
        return new CoverInfoMatch(url, id2);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CoverInfoMatch)) {
            return false;
        }
        CoverInfoMatch coverInfoMatch = (CoverInfoMatch) other;
        return Intrinsics.c(this.url, coverInfoMatch.url) && Intrinsics.c(this.id, coverInfoMatch.id);
    }

    public final String getId() {
        return this.id;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.url;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.id;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setId(String str) {
        this.id = str;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "CoverInfoMatch(url=" + this.url + ", id=" + this.id + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.url);
        dest.writeString(this.id);
    }

    public CoverInfoMatch(String str, String str2) {
        this.url = str;
        this.id = str2;
    }

    public CoverInfoMatch(String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2);
    }
}
