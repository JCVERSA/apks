package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.aue;

public final class zzbla extends zzaxx implements IInterface {
    public zzbla(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
    }

    public final void zze(zzbku zzbkuVar, zzbkz zzbkzVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzbkuVar);
        aue.f(parcelZza, zzbkzVar);
        zzdb(2, parcelZza);
    }
}
