package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.zzp;
import com.google.android.gms.common.zzr;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zza;
import defpackage.uff;

public final class zzab extends zza implements zzad {
    public zzab(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    @Override
    public final boolean zze(com.google.android.gms.common.zzt zztVar, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        uff.c(parcelZza, zztVar);
        uff.e(parcelZza, iObjectWrapper);
        Parcel parcelZzB = zzB(5, parcelZza);
        boolean zA = uff.a(parcelZzB);
        parcelZzB.recycle();
        return zA;
    }

    @Override
    public final zzr zzf(zzp zzpVar) throws RemoteException {
        Parcel parcelZza = zza();
        uff.c(parcelZza, zzpVar);
        Parcel parcelZzB = zzB(6, parcelZza);
        zzr zzrVar = (zzr) uff.b(parcelZzB, zzr.CREATOR);
        parcelZzB.recycle();
        return zzrVar;
    }

    @Override
    public final boolean zzg() throws RemoteException {
        Parcel parcelZzB = zzB(7, zza());
        boolean zA = uff.a(parcelZzB);
        parcelZzB.recycle();
        return zA;
    }

    @Override
    public final zzr zzh(zzp zzpVar) throws RemoteException {
        Parcel parcelZza = zza();
        uff.c(parcelZza, zzpVar);
        Parcel parcelZzB = zzB(8, parcelZza);
        zzr zzrVar = (zzr) uff.b(parcelZzB, zzr.CREATOR);
        parcelZzB.recycle();
        return zzrVar;
    }

    @Override
    public final boolean zzi() throws RemoteException {
        Parcel parcelZzB = zzB(9, zza());
        boolean zA = uff.a(parcelZzB);
        parcelZzB.recycle();
        return zA;
    }
}
