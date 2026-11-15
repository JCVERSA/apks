package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzae extends com.google.android.gms.internal.maps.zzb implements zzad {
    public zzae() {
        super("com.google.android.gms.maps.internal.IOnInfoWindowCloseListener");
    }

    @Override
    protected final boolean dispatchTransaction(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        zzg(com.google.android.gms.internal.maps.zzu.zzg(parcel.readStrongBinder()));
        parcel2.writeNoException();
        return true;
    }
}
