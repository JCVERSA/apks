package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.aue;

public abstract class zzfqx extends zzaxy implements zzfqy {
    public zzfqx() {
        super("com.google.android.play.core.lmd.protocol.ILmdOverlayServiceListener");
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        Bundle bundle = (Bundle) aue.a(parcel, Bundle.CREATOR);
        aue.c(parcel);
        zzb(bundle);
        return true;
    }
}
