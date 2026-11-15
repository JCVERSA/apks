package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import defpackage.aue;

public abstract class zzbhj extends zzaxy implements zzbhk {
    public zzbhj() {
        super("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            String string = parcel.readString();
            aue.c(parcel);
            zzf(string);
        } else {
            if (i != 2) {
                return false;
            }
            zze();
        }
        parcel2.writeNoException();
        return true;
    }
}
