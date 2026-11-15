package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.aue;

public abstract class zzblk extends zzaxy implements zzbll {
    public zzblk() {
        super("com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
    }

    public static zzbll zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
        return iInterfaceQueryLocalInterface instanceof zzbll ? (zzbll) iInterfaceQueryLocalInterface : new zzblj(iBinder);
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 2) {
            zzf();
        } else {
            if (i != 3) {
                return false;
            }
            String string = parcel.readString();
            aue.c(parcel);
            zze(string);
        }
        parcel2.writeNoException();
        return true;
    }
}
