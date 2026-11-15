package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzbx;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.aue;

public final class zzbhc extends zzaxx implements zzbhe {
    public zzbhc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
    }

    @Override
    public final void zze(zzbx zzbxVar, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzbxVar);
        aue.f(parcelZza, iObjectWrapper);
        zzda(1, parcelZza);
    }
}
