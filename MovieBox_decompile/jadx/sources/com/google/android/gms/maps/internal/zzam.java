package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzam extends com.google.android.gms.internal.maps.zzb implements zzal {
    public zzam() {
        super("com.google.android.gms.maps.internal.IOnMapLoadedCallback");
    }

    @Override
    protected final boolean dispatchTransaction(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        onMapLoaded();
        parcel2.writeNoException();
        return true;
    }
}
