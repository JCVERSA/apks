package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzy extends com.google.android.gms.internal.maps.zzb implements zzx {
    public zzy() {
        super("com.google.android.gms.maps.internal.IOnGroundOverlayClickListener");
    }

    @Override
    protected final boolean dispatchTransaction(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        zza(com.google.android.gms.internal.maps.zzl.zzd(parcel.readStrongBinder()));
        parcel2.writeNoException();
        return true;
    }
}
