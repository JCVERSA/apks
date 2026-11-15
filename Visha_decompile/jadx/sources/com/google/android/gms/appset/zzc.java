package com.google.android.gms.appset;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.w4g;
import defpackage.z09;

public final class zzc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzc> CREATOR = new w4g();
    private final String zza;
    private final int zzb;

    public zzc(String str, int i) {
        this.zza = str;
        this.zzb = i;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.D(parcel, 1, this.zza, false);
        z09.s(parcel, 2, this.zzb);
        z09.b(parcel, iA);
    }

    public final int zza() {
        return this.zzb;
    }

    public final String zzb() {
        return this.zza;
    }
}
