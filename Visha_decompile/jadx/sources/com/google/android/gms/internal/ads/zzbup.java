package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzbb;
import defpackage.aue;

public abstract class zzbup extends zzaxy implements zzbuq {
    public zzbup() {
        super("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) aue.a(parcel, ParcelFileDescriptor.CREATOR);
            aue.c(parcel);
            zzf(parcelFileDescriptor);
        } else if (i == 2) {
            zzbb zzbbVar = (zzbb) aue.a(parcel, zzbb.CREATOR);
            aue.c(parcel);
            zze(zzbbVar);
        } else {
            if (i != 3) {
                return false;
            }
            ParcelFileDescriptor parcelFileDescriptor2 = (ParcelFileDescriptor) aue.a(parcel, ParcelFileDescriptor.CREATOR);
            zzbuy zzbuyVar = (zzbuy) aue.a(parcel, zzbuy.CREATOR);
            aue.c(parcel);
            zzg(parcelFileDescriptor2, zzbuyVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
