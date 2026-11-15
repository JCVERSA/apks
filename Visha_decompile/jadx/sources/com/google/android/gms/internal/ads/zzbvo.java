package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.aue;

public final class zzbvo extends zzaxx implements zzbvq {
    public zzbvo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    @Override
    public final void zze(zzbvk zzbvkVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzbvkVar);
        zzda(5, parcelZza);
    }

    @Override
    public final void zzf() throws RemoteException {
        zzda(4, zza());
    }

    @Override
    public final void zzg(int i) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        zzda(7, parcelZza);
    }

    @Override
    public final void zzh() throws RemoteException {
        zzda(6, zza());
    }

    @Override
    public final void zzi() throws RemoteException {
        zzda(1, zza());
    }

    @Override
    public final void zzj() throws RemoteException {
        zzda(2, zza());
    }

    @Override
    public final void zzk() throws RemoteException {
        zzda(8, zza());
    }

    @Override
    public final void zzl() throws RemoteException {
        zzda(3, zza());
    }
}
