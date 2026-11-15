package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.aue;

public abstract class zzbgw extends zzaxy implements zzbgx {
    public zzbgw() {
        super("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    public static zzbgx zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
        return iInterfaceQueryLocalInterface instanceof zzbgx ? (zzbgx) iInterfaceQueryLocalInterface : new zzbgv(iBinder);
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbgn zzbglVar;
        if (i != 1) {
            return false;
        }
        IBinder strongBinder = parcel.readStrongBinder();
        if (strongBinder == null) {
            zzbglVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
            zzbglVar = iInterfaceQueryLocalInterface instanceof zzbgn ? (zzbgn) iInterfaceQueryLocalInterface : new zzbgl(strongBinder);
        }
        String string = parcel.readString();
        aue.c(parcel);
        zze(zzbglVar, string);
        parcel2.writeNoException();
        return true;
    }
}
