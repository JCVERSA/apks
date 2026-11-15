package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.cyh;
import defpackage.z09;

public final class zzfog extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfog> CREATOR = new cyh();
    public final int zza;
    public final int zzb;
    public final String zzc;
    public final String zzd;
    public final int zze;

    public zzfog(int i, int i2, int i3, String str, String str2) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = str;
        this.zzd = str2;
        this.zze = i3;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int iA = z09.a(parcel);
        z09.s(parcel, 1, i2);
        z09.s(parcel, 2, this.zzb);
        z09.D(parcel, 3, this.zzc, false);
        z09.D(parcel, 4, this.zzd, false);
        z09.s(parcel, 5, this.zze);
        z09.b(parcel, iA);
    }

    public zzfog(int i, int i2, String str, String str2) {
        this(1, 1, i2 - 1, str, str2);
    }
}
