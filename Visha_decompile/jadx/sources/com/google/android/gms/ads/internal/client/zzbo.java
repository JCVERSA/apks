package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaxx;
import defpackage.aue;

public final class zzbo extends zzaxx implements zzbq {
    public zzbo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override
    public final String zze() throws RemoteException {
        throw null;
    }

    @Override
    public final String zzf() throws RemoteException {
        throw null;
    }

    @Override
    public final void zzg(zzm zzmVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzmVar);
        zzda(1, parcelZza);
    }

    @Override
    public final void zzh(zzm zzmVar, int i) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzmVar);
        parcelZza.writeInt(i);
        zzda(5, parcelZza);
    }

    @Override
    public final boolean zzi() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(3, zza());
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }
}
