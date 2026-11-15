package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.dyh;
import defpackage.z09;
import java.util.Arrays;

public final class zzfoi extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfoi> CREATOR = new dyh();
    public final int zza;
    public final byte[] zzb;
    public final int zzc;

    public zzfoi(int i, byte[] bArr, int i2) {
        this.zza = i;
        this.zzb = bArr == null ? null : Arrays.copyOf(bArr, bArr.length);
        this.zzc = i2;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int iA = z09.a(parcel);
        z09.s(parcel, 1, i2);
        z09.k(parcel, 2, this.zzb, false);
        z09.s(parcel, 3, this.zzc);
        z09.b(parcel, iA);
    }

    public zzfoi(byte[] bArr, int i) {
        this(1, null, 1);
    }
}
