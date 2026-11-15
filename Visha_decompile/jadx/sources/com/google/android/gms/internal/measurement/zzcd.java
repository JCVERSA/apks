package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.f7f;

public final class zzcd extends zzbm implements zzcf {
    public zzcd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override
    public final void zzd(Bundle bundle) throws RemoteException {
        Parcel parcelZza = zza();
        f7f.e(parcelZza, bundle);
        zzc(1, parcelZza);
    }
}
