package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.aue;

public final class zzbgp extends zzaxx implements zzbgr {
    public zzbgp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
    }

    @Override
    public final void zze(zzbgi zzbgiVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzbgiVar);
        zzda(1, parcelZza);
    }
}
