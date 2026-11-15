package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.e5f;
import defpackage.z09;

public final class zzblh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzblh> CREATOR = new e5f();
    public final String zza;
    public final boolean zzb;
    public final int zzc;
    public final String zzd;

    public zzblh(String str, boolean z, int i, String str2) {
        this.zza = str;
        this.zzb = z;
        this.zzc = i;
        this.zzd = str2;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int iA = z09.a(parcel);
        z09.D(parcel, 1, str, false);
        z09.g(parcel, 2, this.zzb);
        z09.s(parcel, 3, this.zzc);
        z09.D(parcel, 4, this.zzd, false);
        z09.b(parcel, iA);
    }
}
