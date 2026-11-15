package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.ocf;
import defpackage.z09;

public final class zzbwr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbwr> CREATOR = new ocf();
    public final String zza;
    public final String zzb;

    public zzbwr(ServerSideVerificationOptions serverSideVerificationOptions) {
        this(serverSideVerificationOptions.getUserId(), serverSideVerificationOptions.getCustomData());
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int iA = z09.a(parcel);
        z09.D(parcel, 1, str, false);
        z09.D(parcel, 2, this.zzb, false);
        z09.b(parcel, iA);
    }

    public zzbwr(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }
}
