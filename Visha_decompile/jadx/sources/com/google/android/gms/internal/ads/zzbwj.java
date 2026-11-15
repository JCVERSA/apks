package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zze;
import defpackage.aue;

public abstract class zzbwj extends zzaxy implements zzbwk {
    public zzbwj() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzg();
        } else if (i == 2) {
            int i3 = parcel.readInt();
            aue.c(parcel);
            zze(i3);
        } else {
            if (i != 3) {
                return false;
            }
            zze zzeVar = (zze) aue.a(parcel, zze.CREATOR);
            aue.c(parcel);
            zzf(zzeVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
