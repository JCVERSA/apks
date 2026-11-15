package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.aue;

public final class zzbyj extends zzaxx implements zzbyl {
    public zzbyj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator");
    }

    @Override
    public final zzbyi zze(IObjectWrapper iObjectWrapper, zzboy zzboyVar, int i) throws RemoteException {
        zzbyi zzbygVar;
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        aue.f(parcelZza, zzboyVar);
        parcelZza.writeInt(251410000);
        Parcel parcelZzcZ = zzcZ(2, parcelZza);
        IBinder strongBinder = parcelZzcZ.readStrongBinder();
        if (strongBinder == null) {
            zzbygVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
            zzbygVar = iInterfaceQueryLocalInterface instanceof zzbyi ? (zzbyi) iInterfaceQueryLocalInterface : new zzbyg(strongBinder);
        }
        parcelZzcZ.recycle();
        return zzbygVar;
    }
}
