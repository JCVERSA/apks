package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzs extends com.google.android.gms.internal.maps.zzb implements zzr {
    public zzs() {
        super("com.google.android.gms.maps.internal.IOnCameraMoveListener");
    }

    @Override
    protected final boolean dispatchTransaction(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        onCameraMove();
        parcel2.writeNoException();
        return true;
    }
}
