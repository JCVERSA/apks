package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.aue;

public final class zzbuk extends zzaxx implements zzbum {
    public zzbuk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override
    public final void zze(zzbuy zzbuyVar, zzbuq zzbuqVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzbuyVar);
        aue.f(parcelZza, zzbuqVar);
        zzda(6, parcelZza);
    }

    @Override
    public final void zzf(zzbuy zzbuyVar, zzbuq zzbuqVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzbuyVar);
        aue.f(parcelZza, zzbuqVar);
        zzda(5, parcelZza);
    }

    @Override
    public final void zzg(zzbuy zzbuyVar, zzbuq zzbuqVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzbuyVar);
        aue.f(parcelZza, zzbuqVar);
        zzda(4, parcelZza);
    }

    @Override
    public final void zzh(String str, zzbuq zzbuqVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        aue.f(parcelZza, zzbuqVar);
        zzda(7, parcelZza);
    }

    @Override
    public final void zzi(zzbui zzbuiVar, zzbur zzburVar) throws RemoteException {
        throw null;
    }
}
