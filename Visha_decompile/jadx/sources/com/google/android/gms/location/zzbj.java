package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.i4f;
import defpackage.z09;

@Deprecated
public final class zzbj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbj> CREATOR = new i4f();
    private final String zza;
    private final String zzb;
    private final String zzc;

    public zzbj(String str, String str2, String str3) {
        this.zzc = str;
        this.zza = str2;
        this.zzb = str3;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.D(parcel, 1, this.zza, false);
        z09.D(parcel, 2, this.zzb, false);
        z09.D(parcel, 5, this.zzc, false);
        z09.b(parcel, iA);
    }
}
