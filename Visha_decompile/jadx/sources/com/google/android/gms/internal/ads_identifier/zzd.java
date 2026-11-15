package com.google.android.gms.internal.ads_identifier;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.kgf;

public final class zzd extends zza implements zzf {
    public zzd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
    }

    @Override
    public final String zzc() throws RemoteException {
        Parcel parcelZzb = zzb(1, zza());
        String string = parcelZzb.readString();
        parcelZzb.recycle();
        return string;
    }

    @Override
    public final boolean zzd() throws RemoteException {
        Parcel parcelZzb = zzb(6, zza());
        boolean zB = kgf.b(parcelZzb);
        parcelZzb.recycle();
        return zB;
    }

    @Override
    public final boolean zze(boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        kgf.a(parcelZza, true);
        Parcel parcelZzb = zzb(2, parcelZza);
        boolean zB = kgf.b(parcelZzb);
        parcelZzb.recycle();
        return zB;
    }
}
