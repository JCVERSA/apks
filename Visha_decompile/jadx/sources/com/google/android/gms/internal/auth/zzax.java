package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.cue;
import defpackage.wd8;
import defpackage.z09;

public final class zzax extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzax> CREATOR = new cue();
    final int zza;
    public final String zzb;

    public zzax(int i, String str) {
        this.zza = 1;
        this.zzb = (String) wd8.l(str);
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, this.zza);
        z09.D(parcel, 2, this.zzb, false);
        z09.b(parcel, iA);
    }

    public zzax(String str) {
        this(1, str);
    }
}
