package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.z09;

@Deprecated
public final class zzx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzx> CREATOR = new zzy();
    public final int zza;

    public zzx(int i) {
        this.zza = i;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int iA = z09.a(parcel);
        z09.s(parcel, 2, i2);
        z09.b(parcel, iA);
    }
}
