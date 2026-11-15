package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzbb;
import defpackage.aue;

public final class zzbur extends zzaxx implements IInterface {
    public zzbur(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.ITrustlessTokenListener");
    }

    public final void zze(zzbb zzbbVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzbbVar);
        zzda(2, parcelZza);
    }

    public final void zzf(String str, zzbui zzbuiVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        aue.d(parcelZza, zzbuiVar);
        zzda(1, parcelZza);
    }
}
