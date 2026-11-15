package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzw extends com.google.android.gms.internal.maps.zzb implements zzv {
    public zzw() {
        super("com.google.android.gms.maps.internal.IOnCircleClickListener");
    }

    @Override
    protected final boolean dispatchTransaction(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        zza(com.google.android.gms.internal.maps.zzi.zzc(parcel.readStrongBinder()));
        parcel2.writeNoException();
        return true;
    }
}
