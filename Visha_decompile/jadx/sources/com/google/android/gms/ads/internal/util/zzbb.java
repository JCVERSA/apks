package com.google.android.gms.ads.internal.util;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.goh;
import defpackage.j3i;
import defpackage.z09;

public final class zzbb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbb> CREATOR = new zzbc();
    public final String zza;
    public final int zzb;

    public zzbb(@Nullable String str, int i) {
        this.zza = str == null ? "" : str;
        this.zzb = i;
    }

    public static zzbb zzb(Throwable th) {
        com.google.android.gms.ads.internal.client.zze zzeVarA = goh.a(th);
        return new zzbb(j3i.d(th.getMessage()) ? zzeVarA.zzb : th.getMessage(), zzeVarA.zza);
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int iA = z09.a(parcel);
        z09.D(parcel, 1, str, false);
        z09.s(parcel, 2, this.zzb);
        z09.b(parcel, iA);
    }

    public final zzba zza() {
        return new zzba(this.zza, this.zzb);
    }
}
