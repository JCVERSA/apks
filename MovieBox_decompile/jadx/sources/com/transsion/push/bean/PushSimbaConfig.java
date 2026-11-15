package com.transsion.push.bean;

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
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0006\u0010\n\u001a\u00020\u000bJ\u0013\u0010\f\u001a\u00020\u00032\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u000bHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0017"}, d2 = {"Lcom/transsion/push/bean/PushSimbaConfig;", "Landroid/os/Parcelable;", "requestHashEnable", "", "<init>", "(Z)V", "getRequestHashEnable", "()Z", "component1", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "push_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PushSimbaConfig implements Parcelable {
    public static final Parcelable.Creator<PushSimbaConfig> CREATOR = new Creator();
    private final boolean requestHashEnable;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Creator implements Parcelable.Creator<PushSimbaConfig> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final PushSimbaConfig createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new PushSimbaConfig(parcel.readInt() != 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final PushSimbaConfig[] newArray(int i10) {
            return new PushSimbaConfig[i10];
        }
    }

    public PushSimbaConfig() {
        this(false, 1, null);
    }

    public static PushSimbaConfig copy$default(PushSimbaConfig pushSimbaConfig, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = pushSimbaConfig.requestHashEnable;
        }
        return pushSimbaConfig.copy(z10);
    }

    public final boolean getRequestHashEnable() {
        return this.requestHashEnable;
    }

    public final PushSimbaConfig copy(boolean requestHashEnable) {
        return new PushSimbaConfig(requestHashEnable);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof PushSimbaConfig) && this.requestHashEnable == ((PushSimbaConfig) other).requestHashEnable;
    }

    public final boolean getRequestHashEnable() {
        return this.requestHashEnable;
    }

    public int hashCode() {
        return e.a(this.requestHashEnable);
    }

    public String toString() {
        return "PushSimbaConfig(requestHashEnable=" + this.requestHashEnable + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.requestHashEnable ? 1 : 0);
    }

    public PushSimbaConfig(boolean z10) {
        this.requestHashEnable = z10;
    }

    public PushSimbaConfig(boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? false : z10);
    }
}
