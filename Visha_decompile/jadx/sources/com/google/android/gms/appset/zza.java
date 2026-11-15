package com.google.android.gms.appset;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.xve;
import defpackage.z09;

public final class zza extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zza> CREATOR = new xve();

    @Nullable
    private final String zza;

    @Nullable
    private final String zzb;

    public zza(@Nullable String str, @Nullable String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.D(parcel, 1, this.zza, false);
        z09.D(parcel, 2, this.zzb, false);
        z09.b(parcel, iA);
    }
}
