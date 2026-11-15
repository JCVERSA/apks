package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzbb;
import defpackage.aue;

public final class zzbuo extends zzaxx implements zzbuq {
    public zzbuo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override
    public final void zze(zzbb zzbbVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzbbVar);
        zzda(2, parcelZza);
    }

    @Override
    public final void zzf(ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, parcelFileDescriptor);
        zzda(1, parcelZza);
    }

    @Override
    public final void zzg(ParcelFileDescriptor parcelFileDescriptor, zzbuy zzbuyVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, parcelFileDescriptor);
        aue.d(parcelZza, zzbuyVar);
        zzda(3, parcelZza);
    }
}
