package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.z09;

public final class zzl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzl> CREATOR = new zzm();
    public final boolean zza;
    public final boolean zzb;
    public final String zzc;
    public final boolean zzd;
    public final float zze;
    public final int zzf;
    public final boolean zzg;
    public final boolean zzh;
    public final boolean zzi;

    public zzl(boolean z, boolean z2, String str, boolean z3, float f, int i, boolean z4, boolean z5, boolean z6) {
        this.zza = z;
        this.zzb = z2;
        this.zzc = str;
        this.zzd = z3;
        this.zze = f;
        this.zzf = i;
        this.zzg = z4;
        this.zzh = z5;
        this.zzi = z6;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        boolean z = this.zza;
        int iA = z09.a(parcel);
        z09.g(parcel, 2, z);
        z09.g(parcel, 3, this.zzb);
        z09.D(parcel, 4, this.zzc, false);
        z09.g(parcel, 5, this.zzd);
        z09.o(parcel, 6, this.zze);
        z09.s(parcel, 7, this.zzf);
        z09.g(parcel, 8, this.zzg);
        z09.g(parcel, 9, this.zzh);
        z09.g(parcel, 10, this.zzi);
        z09.b(parcel, iA);
    }

    public zzl(boolean z, boolean z2, boolean z3, float f, int i, boolean z4, boolean z5, boolean z6) {
        this(z, z2, null, z3, f, -1, z4, z5, z6);
    }
}
