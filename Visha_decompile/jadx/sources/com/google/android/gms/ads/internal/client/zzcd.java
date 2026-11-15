package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaxy;
import defpackage.aue;

public abstract class zzcd extends zzaxy implements zzce {
    public zzcd() {
        super("com.google.android.gms.ads.internal.client.IAdPreloadCallback");
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzfp zzfpVar = (zzfp) aue.a(parcel, zzfp.CREATOR);
            aue.c(parcel);
            zze(zzfpVar);
        } else {
            if (i != 2) {
                return false;
            }
            zzfp zzfpVar2 = (zzfp) aue.a(parcel, zzfp.CREATOR);
            aue.c(parcel);
            zzf(zzfpVar2);
        }
        parcel2.writeNoException();
        return true;
    }
}
