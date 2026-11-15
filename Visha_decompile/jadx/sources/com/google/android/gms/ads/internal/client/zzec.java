package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaxy;
import defpackage.aue;

public abstract class zzec extends zzaxy implements zzed {
    public zzec() {
        super("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzi();
        } else if (i == 2) {
            zzh();
        } else if (i == 3) {
            zzg();
        } else if (i == 4) {
            zze();
        } else {
            if (i != 5) {
                return false;
            }
            boolean zG = aue.g(parcel);
            aue.c(parcel);
            zzf(zG);
        }
        parcel2.writeNoException();
        return true;
    }
}
