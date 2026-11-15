package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.u4f;
import defpackage.z09;

public final class zzbku extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbku> CREATOR = new u4f();
    public final String zza;
    public final String[] zzb;
    public final String[] zzc;

    public zzbku(String str, String[] strArr, String[] strArr2) {
        this.zza = str;
        this.zzb = strArr;
        this.zzc = strArr2;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int iA = z09.a(parcel);
        z09.D(parcel, 1, str, false);
        z09.E(parcel, 2, this.zzb, false);
        z09.E(parcel, 3, this.zzc, false);
        z09.b(parcel, iA);
    }
}
