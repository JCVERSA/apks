package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.lce;
import defpackage.z09;

public class RootTelemetryConfiguration extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<RootTelemetryConfiguration> CREATOR = new lce();
    private final int zza;
    private final boolean zzb;
    private final boolean zzc;
    private final int zzd;
    private final int zze;

    public RootTelemetryConfiguration(int i, boolean z, boolean z2, int i2, int i3) {
        this.zza = i;
        this.zzb = z;
        this.zzc = z2;
        this.zzd = i2;
        this.zze = i3;
    }

    public int getBatchPeriodMillis() {
        return this.zzd;
    }

    public int getMaxMethodInvocationsInBatch() {
        return this.zze;
    }

    public boolean getMethodInvocationTelemetryEnabled() {
        return this.zzb;
    }

    public boolean getMethodTimingTelemetryEnabled() {
        return this.zzc;
    }

    public int getVersion() {
        return this.zza;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, getVersion());
        z09.g(parcel, 2, getMethodInvocationTelemetryEnabled());
        z09.g(parcel, 3, getMethodTimingTelemetryEnabled());
        z09.s(parcel, 4, getBatchPeriodMillis());
        z09.s(parcel, 5, getMaxMethodInvocationsInBatch());
        z09.b(parcel, iA);
    }
}
