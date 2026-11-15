package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.location.zzaz;
import com.google.android.gms.location.zzbd;
import defpackage.rye;
import defpackage.z09;

public final class zzbc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbc> CREATOR = new rye();
    final int zza;

    @Nullable
    final zzba zzb;

    @Nullable
    final zzbd zzc;

    @Nullable
    final PendingIntent zzd;

    @Nullable
    final com.google.android.gms.location.zzba zze;

    @Nullable
    final zzai zzf;

    public zzbc(int i, @Nullable zzba zzbaVar, @Nullable IBinder iBinder, @Nullable PendingIntent pendingIntent, @Nullable IBinder iBinder2, @Nullable IBinder iBinder3) {
        this.zza = i;
        this.zzb = zzbaVar;
        zzai zzagVar = null;
        this.zzc = iBinder == null ? null : com.google.android.gms.location.zzbc.zzb(iBinder);
        this.zzd = pendingIntent;
        this.zze = iBinder2 == null ? null : zzaz.zzb(iBinder2);
        if (iBinder3 != null) {
            IInterface iInterfaceQueryLocalInterface = iBinder3.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            zzagVar = iInterfaceQueryLocalInterface instanceof zzai ? (zzai) iInterfaceQueryLocalInterface : new zzag(iBinder3);
        }
        this.zzf = zzagVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r8v0, types: [android.os.IBinder, com.google.android.gms.location.zzbd] */
    public static zzbc zza(zzbd zzbdVar, @Nullable zzai zzaiVar) {
        if (zzaiVar == null) {
            zzaiVar = null;
        }
        return new zzbc(2, null, zzbdVar, null, null, zzaiVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zzbc zzb(zzba zzbaVar, PendingIntent pendingIntent, @Nullable zzai zzaiVar) {
        return new zzbc(1, zzbaVar, null, pendingIntent, null, zzaiVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r8v0, types: [android.os.IBinder, com.google.android.gms.location.zzba] */
    public static zzbc zzc(com.google.android.gms.location.zzba zzbaVar, @Nullable zzai zzaiVar) {
        if (zzaiVar == null) {
            zzaiVar = null;
        }
        return new zzbc(2, null, null, null, zzbaVar, zzaiVar);
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.s(parcel, 1, this.zza);
        z09.B(parcel, 2, this.zzb, i, false);
        zzbd zzbdVar = this.zzc;
        z09.r(parcel, 3, zzbdVar == null ? null : zzbdVar.asBinder(), false);
        z09.B(parcel, 4, this.zzd, i, false);
        com.google.android.gms.location.zzba zzbaVar = this.zze;
        z09.r(parcel, 5, zzbaVar == null ? null : zzbaVar.asBinder(), false);
        zzai zzaiVar = this.zzf;
        z09.r(parcel, 6, zzaiVar != null ? zzaiVar.asBinder() : null, false);
        z09.b(parcel, iA);
    }
}
