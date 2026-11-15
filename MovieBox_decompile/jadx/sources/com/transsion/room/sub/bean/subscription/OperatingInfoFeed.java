package com.transsion.room.sub.bean.subscription;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Keep
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÆ\u0003J+\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0006\u0010\u0017\u001a\u00020\u0006J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0006R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\fR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006#"}, d2 = {"Lcom/transsion/room/sub/bean/subscription/OperatingInfoFeed;", "Landroid/os/Parcelable;", "tag", "", "appointmentDate", "appointmentCnt", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;I)V", "getTag", "()Ljava/lang/String;", "setTag", "(Ljava/lang/String;)V", "getAppointmentDate", "setAppointmentDate", "getAppointmentCnt", "()I", "setAppointmentCnt", "(I)V", "component1", "component2", "component3", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class OperatingInfoFeed implements Parcelable {
    public static final Parcelable.Creator<OperatingInfoFeed> CREATOR = new a();
    private int appointmentCnt;
    private String appointmentDate;
    private String tag;

    public static final class a implements Parcelable.Creator {
        @Override
        public final OperatingInfoFeed createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new OperatingInfoFeed(parcel.readString(), parcel.readString(), parcel.readInt());
        }

        @Override
        public final OperatingInfoFeed[] newArray(int i10) {
            return new OperatingInfoFeed[i10];
        }
    }

    public OperatingInfoFeed() {
        this(null, null, 0, 7, null);
    }

    public static OperatingInfoFeed copy$default(OperatingInfoFeed operatingInfoFeed, String str, String str2, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = operatingInfoFeed.tag;
        }
        if ((i11 & 2) != 0) {
            str2 = operatingInfoFeed.appointmentDate;
        }
        if ((i11 & 4) != 0) {
            i10 = operatingInfoFeed.appointmentCnt;
        }
        return operatingInfoFeed.copy(str, str2, i10);
    }

    public final String getTag() {
        return this.tag;
    }

    public final String getAppointmentDate() {
        return this.appointmentDate;
    }

    public final int getAppointmentCnt() {
        return this.appointmentCnt;
    }

    public final OperatingInfoFeed copy(String tag, String appointmentDate, int appointmentCnt) {
        return new OperatingInfoFeed(tag, appointmentDate, appointmentCnt);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OperatingInfoFeed)) {
            return false;
        }
        OperatingInfoFeed operatingInfoFeed = (OperatingInfoFeed) other;
        return Intrinsics.c(this.tag, operatingInfoFeed.tag) && Intrinsics.c(this.appointmentDate, operatingInfoFeed.appointmentDate) && this.appointmentCnt == operatingInfoFeed.appointmentCnt;
    }

    public final int getAppointmentCnt() {
        return this.appointmentCnt;
    }

    public final String getAppointmentDate() {
        return this.appointmentDate;
    }

    public final String getTag() {
        return this.tag;
    }

    public int hashCode() {
        String str = this.tag;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.appointmentDate;
        return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.appointmentCnt;
    }

    public final void setAppointmentCnt(int i10) {
        this.appointmentCnt = i10;
    }

    public final void setAppointmentDate(String str) {
        this.appointmentDate = str;
    }

    public final void setTag(String str) {
        this.tag = str;
    }

    public String toString() {
        return "OperatingInfoFeed(tag=" + this.tag + ", appointmentDate=" + this.appointmentDate + ", appointmentCnt=" + this.appointmentCnt + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.tag);
        dest.writeString(this.appointmentDate);
        dest.writeInt(this.appointmentCnt);
    }

    public OperatingInfoFeed(String str, String str2, int i10) {
        this.tag = str;
        this.appointmentDate = str2;
        this.appointmentCnt = i10;
    }

    public OperatingInfoFeed(String str, String str2, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? 0 : i10);
    }
}
