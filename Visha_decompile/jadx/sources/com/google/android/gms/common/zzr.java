package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.drj;
import defpackage.fgf;
import defpackage.sjj;
import defpackage.z09;

public final class zzr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzr> CREATOR = new sjj();
    private final boolean zza;
    private final String zzb;
    private final int zzc;
    private final int zzd;
    private final long zze;

    public zzr(boolean z, String str, int i, int i2, long j) {
        this.zza = z;
        this.zzb = str;
        this.zzc = drj.a(i) - 1;
        this.zzd = fgf.a(i2) - 1;
        this.zze = j;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.g(parcel, 1, this.zza);
        z09.D(parcel, 2, this.zzb, false);
        z09.s(parcel, 3, this.zzc);
        z09.s(parcel, 4, this.zzd);
        z09.w(parcel, 5, this.zze);
        z09.b(parcel, iA);
    }

    public final boolean zza() {
        return this.zza;
    }

    public final String zzb() {
        return this.zzb;
    }

    public final long zzc() {
        return this.zze;
    }

    public final int zzd() {
        return drj.a(this.zzc);
    }

    public final int zze() {
        return fgf.a(this.zzd);
    }
}
