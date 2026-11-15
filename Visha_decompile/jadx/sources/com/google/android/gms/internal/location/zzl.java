package com.google.android.gms.internal.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.gaj;
import defpackage.z09;

public final class zzl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzl> CREATOR = new gaj();
    final int zza;
    final zzj zzb;
    final com.google.android.gms.location.zzax zzc;
    final zzai zzd;

    public zzl(int i, zzj zzjVar, IBinder iBinder, IBinder iBinder2) {
        this.zza = i;
        this.zzb = zzjVar;
        zzai zzagVar = null;
        this.zzc = iBinder == null ? null : com.google.android.gms.location.zzaw.zzb(iBinder);
        if (iBinder2 != null) {
            IInterface iInterfaceQueryLocalInterface = iBinder2.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            zzagVar = iInterfaceQueryLocalInterface instanceof zzai ? (zzai) iInterfaceQueryLocalInterface : new zzag(iBinder2);
        }
        this.zzd = zzagVar;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, this.zza);
        z09.B(parcel, 2, this.zzb, i, false);
        com.google.android.gms.location.zzax zzaxVar = this.zzc;
        z09.r(parcel, 3, zzaxVar == null ? null : zzaxVar.asBinder(), false);
        zzai zzaiVar = this.zzd;
        z09.r(parcel, 4, zzaiVar != null ? zzaiVar.asBinder() : null, false);
        z09.b(parcel, iA);
    }
}
