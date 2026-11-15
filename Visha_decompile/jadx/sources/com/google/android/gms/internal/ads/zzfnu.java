package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.sxh;
import defpackage.z09;

public final class zzfnu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfnu> CREATOR = new sxh();
    public final int zza;
    public final byte[] zzb;

    public zzfnu(int i, byte[] bArr) {
        this.zza = i;
        this.zzb = bArr;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int iA = z09.a(parcel);
        z09.s(parcel, 1, i2);
        z09.k(parcel, 2, this.zzb, false);
        z09.b(parcel, iA);
    }

    public zzfnu(byte[] bArr) {
        this(1, bArr);
    }
}
