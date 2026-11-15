package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaxy;
import com.google.android.gms.internal.ads.zzboy;
import defpackage.aue;

public abstract class zzcu extends zzaxy implements zzcv {
    public zzcu() {
        super("com.google.android.gms.ads.internal.client.ILiteSdkInfo");
    }

    public static zzcv asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.ILiteSdkInfo");
        return iInterfaceQueryLocalInterface instanceof zzcv ? (zzcv) iInterfaceQueryLocalInterface : new zzct(iBinder);
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzex liteSdkVersion = getLiteSdkVersion();
            parcel2.writeNoException();
            aue.e(parcel2, liteSdkVersion);
        } else {
            if (i != 2) {
                return false;
            }
            zzboy adapterCreator = getAdapterCreator();
            parcel2.writeNoException();
            aue.f(parcel2, adapterCreator);
        }
        return true;
    }
}
