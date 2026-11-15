package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class zzdq extends zzbu implements zzdo {
    zzdq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override
    public final void zza(Bundle bundle) throws RemoteException {
        Parcel parcelA_ = a_();
        zzbw.zza(parcelA_, bundle);
        zzb(1, parcelA_);
    }
}
