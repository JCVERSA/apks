package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzau extends com.google.android.gms.internal.maps.zzb implements zzat {
    public zzau() {
        super("com.google.android.gms.maps.internal.IOnMarkerDragListener");
    }

    @Override
    protected final boolean dispatchTransaction(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            zzb(com.google.android.gms.internal.maps.zzu.zzg(parcel.readStrongBinder()));
        } else if (i10 == 2) {
            zzd(com.google.android.gms.internal.maps.zzu.zzg(parcel.readStrongBinder()));
        } else {
            if (i10 != 3) {
                return false;
            }
            zzc(com.google.android.gms.internal.maps.zzu.zzg(parcel.readStrongBinder()));
        }
        parcel2.writeNoException();
        return true;
    }
}
