package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;

public abstract class zzcgj extends zzaxy implements zzcgk {
    public static zzcgk zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.measurement.IMeasurementManager");
        return iInterfaceQueryLocalInterface instanceof zzcgk ? (zzcgk) iInterfaceQueryLocalInterface : new zzcgi(iBinder);
    }
}
