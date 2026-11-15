package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.aue;

public final class zzbau extends zzaxx implements IInterface {
    public zzbau(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.cache.ICacheService");
    }

    public final long zze(zzbas zzbasVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzbasVar);
        Parcel parcelZzcZ = zzcZ(3, parcelZza);
        long j = parcelZzcZ.readLong();
        parcelZzcZ.recycle();
        return j;
    }

    public final zzbap zzf(zzbas zzbasVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzbasVar);
        Parcel parcelZzcZ = zzcZ(1, parcelZza);
        zzbap zzbapVar = (zzbap) aue.a(parcelZzcZ, zzbap.CREATOR);
        parcelZzcZ.recycle();
        return zzbapVar;
    }

    public final zzbap zzg(zzbas zzbasVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzbasVar);
        Parcel parcelZzcZ = zzcZ(2, parcelZza);
        zzbap zzbapVar = (zzbap) aue.a(parcelZzcZ, zzbap.CREATOR);
        parcelZzcZ.recycle();
        return zzbapVar;
    }
}
