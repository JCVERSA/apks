package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaxx;
import defpackage.aue;

public final class zzdi extends zzaxx implements zzdk {
    public zzdi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IOnAdInspectorClosedListener");
    }

    @Override
    public final void zze(zze zzeVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzeVar);
        zzda(1, parcelZza);
    }
}
