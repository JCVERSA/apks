package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.aue;

public final class zzbfc extends zzaxx implements IInterface {
    public zzbfc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.flags.IFlagRetrieverSupplierProxy");
    }

    public final void zze(zzbuc zzbucVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzbucVar);
        zzda(1, parcelZza);
    }
}
