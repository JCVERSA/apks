package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.aue;

public final class zzbhf extends zzaxx implements zzbhh {
    public zzbhf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
    }

    @Override
    public final void zze(zzbhn zzbhnVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzbhnVar);
        zzda(1, parcelZza);
    }
}
