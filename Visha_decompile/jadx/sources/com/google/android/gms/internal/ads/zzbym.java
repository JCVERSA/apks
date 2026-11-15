package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.def;
import defpackage.z09;

public final class zzbym extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbym> CREATOR = new def();
    public final String zza;
    public final String zzb;

    @Deprecated
    public final com.google.android.gms.ads.internal.client.zzr zzc;
    public final zzm zzd;
    public final int zze;

    @Nullable
    public final String zzf;

    public zzbym(String str, String str2, com.google.android.gms.ads.internal.client.zzr zzrVar, zzm zzmVar, int i, @Nullable String str3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzrVar;
        this.zzd = zzmVar;
        this.zze = i;
        this.zzf = str3;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int iA = z09.a(parcel);
        z09.D(parcel, 1, str, false);
        z09.D(parcel, 2, this.zzb, false);
        z09.B(parcel, 3, this.zzc, i, false);
        z09.B(parcel, 4, this.zzd, i, false);
        z09.s(parcel, 5, this.zze);
        z09.D(parcel, 6, this.zzf, false);
        z09.b(parcel, iA);
    }
}
