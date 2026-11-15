package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzbx;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.aue;

public abstract class zzbhd extends zzaxy implements zzbhe {
    public zzbhd() {
        super("com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
    }

    public static zzbhe zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
        return iInterfaceQueryLocalInterface instanceof zzbhe ? (zzbhe) iInterfaceQueryLocalInterface : new zzbhc(iBinder);
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        zzbx zzbxVarZzad = com.google.android.gms.ads.internal.client.zzbw.zzad(parcel.readStrongBinder());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
        aue.c(parcel);
        zze(zzbxVarZzad, iObjectWrapperAsInterface);
        parcel2.writeNoException();
        return true;
    }
}
