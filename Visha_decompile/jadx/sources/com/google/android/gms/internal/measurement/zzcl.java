package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.aqf;
import defpackage.z09;

public final class zzcl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcl> CREATOR = new aqf();
    public final long zza;
    public final long zzb;
    public final boolean zzc;

    @Nullable
    public final String zzd;

    @Nullable
    public final String zze;

    @Nullable
    public final String zzf;

    @Nullable
    public final Bundle zzg;

    @Nullable
    public final String zzh;

    public zzcl(long j, long j2, boolean z, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Bundle bundle, @Nullable String str4) {
        this.zza = j;
        this.zzb = j2;
        this.zzc = z;
        this.zzd = str;
        this.zze = str2;
        this.zzf = str3;
        this.zzg = bundle;
        this.zzh = str4;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.w(parcel, 1, this.zza);
        z09.w(parcel, 2, this.zzb);
        z09.g(parcel, 3, this.zzc);
        z09.D(parcel, 4, this.zzd, false);
        z09.D(parcel, 5, this.zze, false);
        z09.D(parcel, 6, this.zzf, false);
        z09.j(parcel, 7, this.zzg, false);
        z09.D(parcel, 8, this.zzh, false);
        z09.b(parcel, iA);
    }
}
