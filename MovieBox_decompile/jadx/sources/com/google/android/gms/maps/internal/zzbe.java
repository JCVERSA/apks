package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzbe extends com.google.android.gms.internal.maps.zzb implements zzbd {
    public zzbe() {
        super("com.google.android.gms.maps.internal.IOnPolygonClickListener");
    }

    @Override
    protected final boolean dispatchTransaction(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        zza(com.google.android.gms.internal.maps.zzx.zzh(parcel.readStrongBinder()));
        parcel2.writeNoException();
        return true;
    }
}
