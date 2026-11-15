package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.aue;

public final class zzfqu extends zzaxx implements zzfqw {
    public zzfqu(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.lmd.protocol.ILmdOverlayService");
    }

    @Override
    public final void zze(Bundle bundle, zzfqy zzfqyVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, bundle);
        aue.f(parcelZza, zzfqyVar);
        zzdb(2, parcelZza);
    }

    @Override
    public final void zzf(String str, Bundle bundle, zzfqy zzfqyVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        aue.d(parcelZza, bundle);
        aue.f(parcelZza, zzfqyVar);
        zzdb(1, parcelZza);
    }

    @Override
    public final void zzg(Bundle bundle, zzfqy zzfqyVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, bundle);
        aue.f(parcelZza, zzfqyVar);
        zzdb(3, parcelZza);
    }
}
