package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzaw extends com.google.android.gms.internal.maps.zzb implements zzav {
    public zzaw() {
        super("com.google.android.gms.maps.internal.IOnMyLocationButtonClickListener");
    }

    @Override
    protected final boolean dispatchTransaction(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        boolean zOnMyLocationButtonClick = onMyLocationButtonClick();
        parcel2.writeNoException();
        com.google.android.gms.internal.maps.zzc.writeBoolean(parcel2, zOnMyLocationButtonClick);
        return true;
    }
}
