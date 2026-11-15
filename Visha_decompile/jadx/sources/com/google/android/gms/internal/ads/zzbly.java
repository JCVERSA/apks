package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import defpackage.aue;

public abstract class zzbly extends zzaxy implements zzblz {
    public zzbly() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            parcel.readInt();
            aue.c(parcel);
        }
        parcel2.writeNoException();
        return true;
    }
}
