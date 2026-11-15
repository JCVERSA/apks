package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaxx;
import defpackage.aue;

public final class zzbi extends zzaxx implements zzbk {
    public zzbi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override
    public final void zzc() throws RemoteException {
        zzda(6, zza());
    }

    @Override
    public final void zzd() throws RemoteException {
        zzda(1, zza());
    }

    @Override
    public final void zze(int i) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        zzda(2, parcelZza);
    }

    @Override
    public final void zzf(zze zzeVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzeVar);
        zzda(8, parcelZza);
    }

    @Override
    public final void zzg() throws RemoteException {
        zzda(7, zza());
    }

    @Override
    public final void zzh() throws RemoteException {
        zzda(3, zza());
    }

    @Override
    public final void zzi() throws RemoteException {
        zzda(4, zza());
    }

    @Override
    public final void zzj() throws RemoteException {
        zzda(5, zza());
    }

    @Override
    public final void zzk() throws RemoteException {
        zzda(9, zza());
    }
}
