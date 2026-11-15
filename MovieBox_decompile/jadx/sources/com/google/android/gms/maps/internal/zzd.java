package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzd extends com.google.android.gms.internal.maps.zzb implements zzc {
    public zzd() {
        super("com.google.android.gms.maps.internal.ICancelableCallback");
    }

    @Override
    protected final boolean dispatchTransaction(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            onFinish();
        } else {
            if (i10 != 2) {
                return false;
            }
            onCancel();
        }
        parcel2.writeNoException();
        return true;
    }
}
