package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaxx;
import defpackage.aue;

public final class zzcc extends zzaxx implements zzce {
    public zzcc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdPreloadCallback");
    }

    @Override
    public final void zze(zzfp zzfpVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzfpVar);
        zzda(1, parcelZza);
    }

    @Override
    public final void zzf(zzfp zzfpVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzfpVar);
        zzda(2, parcelZza);
    }
}
