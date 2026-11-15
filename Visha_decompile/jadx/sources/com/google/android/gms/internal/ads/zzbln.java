package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.aue;
import java.util.ArrayList;

public abstract class zzbln extends zzaxy implements zzblo {
    public zzbln() {
        super("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    public static zzblo zzc(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
        return iInterfaceQueryLocalInterface instanceof zzblo ? (zzblo) iInterfaceQueryLocalInterface : new zzblm(iBinder);
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(zzblh.CREATOR);
        aue.c(parcel);
        zzb(arrayListCreateTypedArrayList);
        parcel2.writeNoException();
        return true;
    }
}
