package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzo extends com.google.android.gms.internal.maps.zzb implements zzn {
    public zzo() {
        super("com.google.android.gms.maps.internal.IOnCameraIdleListener");
    }

    @Override
    protected final boolean dispatchTransaction(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        onCameraIdle();
        parcel2.writeNoException();
        return true;
    }
}
