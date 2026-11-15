package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.gwe;
import defpackage.wd8;
import defpackage.z09;

public final class zzaz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaz> CREATOR = new gwe();
    final int zza;
    public final String zzb;
    public final byte[] zzc;

    public zzaz(int i, String str, byte[] bArr) {
        this.zza = 1;
        this.zzb = (String) wd8.l(str);
        this.zzc = (byte[]) wd8.l(bArr);
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, this.zza);
        z09.D(parcel, 2, this.zzb, false);
        z09.k(parcel, 3, this.zzc, false);
        z09.b(parcel, iA);
    }

    public zzaz(String str, byte[] bArr) {
        this(1, str, bArr);
    }
}
