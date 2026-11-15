package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zze;
import defpackage.aue;

public final class zzbaf extends zzaxx implements zzbah {
    public zzbaf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
    }

    @Override
    public final void zzb() throws RemoteException {
        zzda(5, zza());
    }

    @Override
    public final void zzc() throws RemoteException {
        zzda(2, zza());
    }

    @Override
    public final void zzd(zze zzeVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzeVar);
        zzda(3, parcelZza);
    }

    @Override
    public final void zze() throws RemoteException {
        zzda(4, zza());
    }

    @Override
    public final void zzf() throws RemoteException {
        zzda(1, zza());
    }
}
