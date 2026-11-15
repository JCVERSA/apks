package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.uxh;
import defpackage.z09;

public final class zzfnx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfnx> CREATOR = new uxh();
    public final int zza;
    public final String zzb;
    public final String zzc;

    public zzfnx(int i, String str, String str2) {
        this.zza = i;
        this.zzb = str;
        this.zzc = str2;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int iA = z09.a(parcel);
        z09.s(parcel, 1, i2);
        z09.D(parcel, 2, this.zzb, false);
        z09.D(parcel, 3, this.zzc, false);
        z09.b(parcel, iA);
    }

    public zzfnx(String str, String str2) {
        this(1, str, str2);
    }
}
