package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zze;
import defpackage.aue;

public final class zzbwe extends zzaxx implements zzbwg {
    public zzbwe(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override
    public final void zze() throws RemoteException {
        zzda(7, zza());
    }

    @Override
    public final void zzf() throws RemoteException {
        zzda(6, zza());
    }

    @Override
    public final void zzg() throws RemoteException {
        zzda(2, zza());
    }

    @Override
    public final void zzh(int i) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        zzda(4, parcelZza);
    }

    @Override
    public final void zzi(zze zzeVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzeVar);
        zzda(5, parcelZza);
    }

    @Override
    public final void zzj() throws RemoteException {
        zzda(1, zza());
    }

    @Override
    public final void zzk(zzbwa zzbwaVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzbwaVar);
        zzda(3, parcelZza);
    }
}
