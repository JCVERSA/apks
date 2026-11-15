package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzq extends com.google.android.gms.internal.maps.zzb implements zzp {
    public zzq() {
        super("com.google.android.gms.maps.internal.IOnCameraMoveCanceledListener");
    }

    @Override
    protected final boolean dispatchTransaction(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        onCameraMoveCanceled();
        parcel2.writeNoException();
        return true;
    }
}
