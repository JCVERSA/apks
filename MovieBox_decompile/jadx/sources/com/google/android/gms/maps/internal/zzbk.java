package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;

public abstract class zzbk extends com.google.android.gms.internal.maps.zzb implements zzbj {
    public zzbk() {
        super("com.google.android.gms.maps.internal.IOnStreetViewPanoramaChangeListener");
    }

    @Override
    protected final boolean dispatchTransaction(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        onStreetViewPanoramaChange((StreetViewPanoramaLocation) com.google.android.gms.internal.maps.zzc.zza(parcel, StreetViewPanoramaLocation.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
