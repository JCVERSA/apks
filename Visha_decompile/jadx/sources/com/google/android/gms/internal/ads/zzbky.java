package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import defpackage.aue;

public abstract class zzbky extends zzaxy implements zzbkz {
    public zzbky() {
        super("com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheCallback");
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) aue.a(parcel, ParcelFileDescriptor.CREATOR);
        aue.c(parcel);
        zzb(parcelFileDescriptor);
        return true;
    }
}
