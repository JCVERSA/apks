package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.aue;

public final class zzbdb extends zzaxx implements zzbdd {
    public zzbdb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
    }

    @Override
    public final void zze(zzbda zzbdaVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzbdaVar);
        zzda(1, parcelZza);
    }
}
