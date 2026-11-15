package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.jbf;
import defpackage.z09;

public final class zzbui extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbui> CREATOR = new jbf();
    public final String zza;

    public zzbui(String str) {
        this.zza = str;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int iA = z09.a(parcel);
        z09.D(parcel, 1, str, false);
        z09.b(parcel, iA);
    }
}
