package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.aue;

public final class zzfob extends zzaxx implements IInterface {
    public zzfob(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.IGassService");
    }

    public final zzfnz zze(zzfnx zzfnxVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzfnxVar);
        Parcel parcelZzcZ = zzcZ(1, parcelZza);
        zzfnz zzfnzVar = (zzfnz) aue.a(parcelZzcZ, zzfnz.CREATOR);
        parcelZzcZ.recycle();
        return zzfnzVar;
    }

    public final zzfoi zzf(zzfog zzfogVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzfogVar);
        Parcel parcelZzcZ = zzcZ(3, parcelZza);
        zzfoi zzfoiVar = (zzfoi) aue.a(parcelZzcZ, zzfoi.CREATOR);
        parcelZzcZ.recycle();
        return zzfoiVar;
    }

    public final void zzg(zzfnu zzfnuVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzfnuVar);
        zzda(2, parcelZza);
    }
}
