package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.h5f;
import defpackage.z09;

public final class zzblr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzblr> CREATOR = new h5f();
    public final String zza;
    public final Bundle zzb;

    public zzblr(String str, Bundle bundle) {
        this.zza = str;
        this.zzb = bundle;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int iA = z09.a(parcel);
        z09.D(parcel, 1, str, false);
        z09.j(parcel, 2, this.zzb, false);
        z09.b(parcel, iA);
    }
}
