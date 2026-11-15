package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaxx;
import defpackage.aue;

public final class zzcq extends zzaxx implements zzcs {
    public zzcq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
    }

    @Override
    public final void zzb() throws RemoteException {
        zzda(5, zza());
    }

    @Override
    public final void zzc() throws RemoteException {
        zzda(3, zza());
    }

    @Override
    public final void zzd(zze zzeVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzeVar);
        zzda(1, parcelZza);
    }

    @Override
    public final void zze() throws RemoteException {
        zzda(4, zza());
    }

    @Override
    public final void zzf() throws RemoteException {
        zzda(2, zza());
    }
}
