package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.v4f;
import defpackage.z09;

public final class zzbkw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbkw> CREATOR = new v4f();
    public final boolean zza;
    public final String zzb;
    public final int zzc;
    public final byte[] zzd;
    public final String[] zze;
    public final String[] zzf;
    public final boolean zzg;
    public final long zzh;

    public zzbkw(boolean z, String str, int i, byte[] bArr, String[] strArr, String[] strArr2, boolean z2, long j) {
        this.zza = z;
        this.zzb = str;
        this.zzc = i;
        this.zzd = bArr;
        this.zze = strArr;
        this.zzf = strArr2;
        this.zzg = z2;
        this.zzh = j;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        boolean z = this.zza;
        int iA = z09.a(parcel);
        z09.g(parcel, 1, z);
        z09.D(parcel, 2, this.zzb, false);
        z09.s(parcel, 3, this.zzc);
        z09.k(parcel, 4, this.zzd, false);
        z09.E(parcel, 5, this.zze, false);
        z09.E(parcel, 6, this.zzf, false);
        z09.g(parcel, 7, this.zzg);
        z09.w(parcel, 8, this.zzh);
        z09.b(parcel, iA);
    }
}
