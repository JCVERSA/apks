package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.aue;

public final class zzbgv extends zzaxx implements zzbgx {
    public zzbgv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    @Override
    public final void zze(zzbgn zzbgnVar, String str) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzbgnVar);
        parcelZza.writeString(str);
        zzda(1, parcelZza);
    }
}
