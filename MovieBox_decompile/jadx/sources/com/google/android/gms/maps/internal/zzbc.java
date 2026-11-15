package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.PointOfInterest;

public abstract class zzbc extends com.google.android.gms.internal.maps.zzb implements zzbb {
    public zzbc() {
        super("com.google.android.gms.maps.internal.IOnPoiClickListener");
    }

    @Override
    protected final boolean dispatchTransaction(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        zza((PointOfInterest) com.google.android.gms.internal.maps.zzc.zza(parcel, PointOfInterest.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
