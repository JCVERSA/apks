package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.aue;

public final class zzbkm extends zzaxx implements zzbko {
    public zzbkm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.h5.client.IH5AdsManagerCreator");
    }

    @Override
    public final zzbkl zze(IObjectWrapper iObjectWrapper, zzboy zzboyVar, int i, zzbki zzbkiVar) throws RemoteException {
        zzbkl zzbkjVar;
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        aue.f(parcelZza, zzboyVar);
        parcelZza.writeInt(251410000);
        aue.f(parcelZza, zzbkiVar);
        Parcel parcelZzcZ = zzcZ(1, parcelZza);
        IBinder strongBinder = parcelZzcZ.readStrongBinder();
        if (strongBinder == null) {
            zzbkjVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.h5.client.IH5AdsManager");
            zzbkjVar = iInterfaceQueryLocalInterface instanceof zzbkl ? (zzbkl) iInterfaceQueryLocalInterface : new zzbkj(strongBinder);
        }
        parcelZzcZ.recycle();
        return zzbkjVar;
    }
}
