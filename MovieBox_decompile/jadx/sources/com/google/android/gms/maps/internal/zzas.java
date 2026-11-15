package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzas extends com.google.android.gms.internal.maps.zzb implements zzar {
    public zzas() {
        super("com.google.android.gms.maps.internal.IOnMarkerClickListener");
    }

    @Override
    protected final boolean dispatchTransaction(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        boolean zZza = zza(com.google.android.gms.internal.maps.zzu.zzg(parcel.readStrongBinder()));
        parcel2.writeNoException();
        com.google.android.gms.internal.maps.zzc.writeBoolean(parcel2, zZza);
        return true;
    }
}
