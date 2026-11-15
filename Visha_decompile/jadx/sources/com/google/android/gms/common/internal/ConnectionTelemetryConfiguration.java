package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.j8j;
import defpackage.z09;

public class ConnectionTelemetryConfiguration extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<ConnectionTelemetryConfiguration> CREATOR = new j8j();
    private final RootTelemetryConfiguration zza;
    private final boolean zzb;
    private final boolean zzc;

    @Nullable
    private final int[] zzd;
    private final int zze;

    @Nullable
    private final int[] zzf;

    public ConnectionTelemetryConfiguration(@NonNull RootTelemetryConfiguration rootTelemetryConfiguration, boolean z, boolean z2, @Nullable int[] iArr, int i, @Nullable int[] iArr2) {
        this.zza = rootTelemetryConfiguration;
        this.zzb = z;
        this.zzc = z2;
        this.zzd = iArr;
        this.zze = i;
        this.zzf = iArr2;
    }

    public int getMaxMethodInvocationsLogged() {
        return this.zze;
    }

    @Nullable
    public int[] getMethodInvocationMethodKeyAllowlist() {
        return this.zzd;
    }

    @Nullable
    public int[] getMethodInvocationMethodKeyDisallowlist() {
        return this.zzf;
    }

    public boolean getMethodInvocationTelemetryEnabled() {
        return this.zzb;
    }

    public boolean getMethodTimingTelemetryEnabled() {
        return this.zzc;
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.B(parcel, 1, this.zza, i, false);
        z09.g(parcel, 2, getMethodInvocationTelemetryEnabled());
        z09.g(parcel, 3, getMethodTimingTelemetryEnabled());
        z09.t(parcel, 4, getMethodInvocationMethodKeyAllowlist(), false);
        z09.s(parcel, 5, getMaxMethodInvocationsLogged());
        z09.t(parcel, 6, getMethodInvocationMethodKeyDisallowlist(), false);
        z09.b(parcel, iA);
    }

    @NonNull
    public final RootTelemetryConfiguration zza() {
        return this.zza;
    }
}
