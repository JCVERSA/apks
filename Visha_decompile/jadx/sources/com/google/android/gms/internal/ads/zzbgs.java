package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.aue;

public final class zzbgs extends zzaxx implements zzbgu {
    public zzbgs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
    }

    @Override
    public final void zze(zzbgk zzbgkVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzbgkVar);
        zzda(1, parcelZza);
    }
}
