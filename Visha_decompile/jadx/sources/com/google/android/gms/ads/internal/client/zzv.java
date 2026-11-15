package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.z09;

public final class zzv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzv> CREATOR = new zzw();
    public final String zza;
    public long zzb;

    @Nullable
    public zze zzc;
    public final Bundle zzd;
    public final String zze;
    public final String zzf;
    public final String zzg;
    public final String zzh;

    public zzv(String str, long j, @Nullable zze zzeVar, Bundle bundle, String str2, String str3, String str4, String str5) {
        this.zza = str;
        this.zzb = j;
        this.zzc = zzeVar;
        this.zzd = bundle;
        this.zze = str2;
        this.zzf = str3;
        this.zzg = str4;
        this.zzh = str5;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int iA = z09.a(parcel);
        z09.D(parcel, 1, str, false);
        z09.w(parcel, 2, this.zzb);
        z09.B(parcel, 3, this.zzc, i, false);
        z09.j(parcel, 4, this.zzd, false);
        z09.D(parcel, 5, this.zze, false);
        z09.D(parcel, 6, this.zzf, false);
        z09.D(parcel, 7, this.zzg, false);
        z09.D(parcel, 8, this.zzh, false);
        z09.b(parcel, iA);
    }
}
