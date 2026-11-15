package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.aue;

public abstract class zzbye extends zzaxy implements zzbyf {
    public zzbye() {
        super("com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            parcel.readString();
            parcel.readString();
            aue.c(parcel);
        } else if (i == 2) {
            String string = parcel.readString();
            aue.c(parcel);
            zzb(string);
        } else {
            if (i != 3) {
                return false;
            }
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            Bundle bundle = (Bundle) aue.a(parcel, Bundle.CREATOR);
            aue.c(parcel);
            zzc(string2, string3, bundle);
        }
        parcel2.writeNoException();
        return true;
    }
}
