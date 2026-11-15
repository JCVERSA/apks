package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.g6j;
import defpackage.z09;

public final class zzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzj> CREATOR = new g6j();
    Bundle zza;
    Feature[] zzb;
    int zzc;

    @Nullable
    ConnectionTelemetryConfiguration zzd;

    public zzj() {
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.j(parcel, 1, this.zza, false);
        z09.G(parcel, 2, this.zzb, i, false);
        z09.s(parcel, 3, this.zzc);
        z09.B(parcel, 4, this.zzd, i, false);
        z09.b(parcel, iA);
    }

    public zzj(Bundle bundle, Feature[] featureArr, int i, @Nullable ConnectionTelemetryConfiguration connectionTelemetryConfiguration) {
        this.zza = bundle;
        this.zzb = featureArr;
        this.zzc = i;
        this.zzd = connectionTelemetryConfiguration;
    }
}
