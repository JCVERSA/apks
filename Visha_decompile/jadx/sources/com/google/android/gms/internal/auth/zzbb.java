package com.google.android.gms.internal.auth;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.rxe;
import defpackage.wd8;
import defpackage.z09;

public final class zzbb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbb> CREATOR = new rxe();
    final int zza;
    public final String zzb;
    public final PendingIntent zzc;

    public zzbb(int i, String str, PendingIntent pendingIntent) {
        this.zza = 1;
        this.zzb = (String) wd8.l(str);
        this.zzc = (PendingIntent) wd8.l(pendingIntent);
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, this.zza);
        z09.D(parcel, 2, this.zzb, false);
        z09.B(parcel, 3, this.zzc, i, false);
        z09.b(parcel, iA);
    }

    public zzbb(String str, PendingIntent pendingIntent) {
        this(1, str, pendingIntent);
    }
}
