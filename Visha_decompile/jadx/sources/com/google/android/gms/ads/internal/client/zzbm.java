package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaxy;
import defpackage.aue;

public abstract class zzbm extends zzaxy implements zzbn {
    public zzbm() {
        super("com.google.android.gms.ads.internal.client.IAdLoadCallback");
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzc();
        } else {
            if (i != 2) {
                return false;
            }
            zze zzeVar = (zze) aue.a(parcel, zze.CREATOR);
            aue.c(parcel);
            zzb(zzeVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
