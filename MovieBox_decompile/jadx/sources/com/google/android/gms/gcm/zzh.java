package com.google.android.gms.gcm;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class zzh extends com.google.android.gms.internal.gcm.zzd implements zzg {
    zzh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gcm.INetworkTaskCallback");
    }

    @Override
    public final void zzf(int i10) throws RemoteException {
        Parcel parcelZzd = zzd();
        parcelZzd.writeInt(i10);
        zzd(2, parcelZzd);
    }
}
