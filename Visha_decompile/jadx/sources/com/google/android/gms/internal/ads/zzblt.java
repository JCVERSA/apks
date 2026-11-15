package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.i5f;
import defpackage.z09;

public final class zzblt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzblt> CREATOR = new i5f();
    public final int zza;
    public final int zzb;
    public final String zzc;
    public final int zzd;

    public zzblt(int i, int i2, String str, int i3) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = str;
        this.zzd = i3;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zzb;
        int iA = z09.a(parcel);
        z09.s(parcel, 1, i2);
        z09.D(parcel, 2, this.zzc, false);
        z09.s(parcel, 3, this.zzd);
        z09.s(parcel, 1000, this.zza);
        z09.b(parcel, iA);
    }
}
