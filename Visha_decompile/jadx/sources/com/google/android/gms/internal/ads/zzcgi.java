package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.aue;

public final class zzcgi extends zzaxx implements zzcgk {
    public zzcgi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.measurement.IMeasurementManager");
    }

    @Override
    public final void zze(IObjectWrapper iObjectWrapper, zzcgh zzcghVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        aue.f(parcelZza, zzcghVar);
        zzda(2, parcelZza);
    }
}
