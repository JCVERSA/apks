package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzaa extends com.google.android.gms.internal.maps.zzb implements zzz {
    public zzaa() {
        super("com.google.android.gms.maps.internal.IOnIndoorStateChangeListener");
    }

    @Override
    protected final boolean dispatchTransaction(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            onIndoorBuildingFocused();
        } else {
            if (i10 != 2) {
                return false;
            }
            zza(com.google.android.gms.internal.maps.zzo.zze(parcel.readStrongBinder()));
        }
        parcel2.writeNoException();
        return true;
    }
}
