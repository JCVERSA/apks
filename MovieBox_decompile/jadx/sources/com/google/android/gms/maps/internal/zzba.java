package com.google.android.gms.maps.internal;

import android.location.Location;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class zzba extends com.google.android.gms.internal.maps.zzb implements zzaz {
    public zzba() {
        super("com.google.android.gms.maps.internal.IOnMyLocationClickListener");
    }

    @Override
    protected final boolean dispatchTransaction(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        onMyLocationClick((Location) com.google.android.gms.internal.maps.zzc.zza(parcel, Location.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
