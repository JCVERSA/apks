package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.ecf;
import defpackage.z09;

public final class zzbvr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbvr> CREATOR = new ecf();
    public final zzm zza;
    public final String zzb;

    public zzbvr(zzm zzmVar, String str) {
        this.zza = zzmVar;
        this.zzb = str;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        zzm zzmVar = this.zza;
        int iA = z09.a(parcel);
        z09.B(parcel, 2, zzmVar, i, false);
        z09.D(parcel, 3, this.zzb, false);
        z09.b(parcel, iA);
    }
}
