package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.ese;
import defpackage.wd8;
import defpackage.z09;

public final class zzav extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzav> CREATOR = new ese();
    final int zza;
    public final String zzb;
    public final int zzc;

    public zzav(int i, String str, int i2) {
        this.zza = 1;
        this.zzb = (String) wd8.l(str);
        this.zzc = i2;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, this.zza);
        z09.D(parcel, 2, this.zzb, false);
        z09.s(parcel, 3, this.zzc);
        z09.b(parcel, iA);
    }

    public zzav(String str, int i) {
        this(1, str, i);
    }
}
