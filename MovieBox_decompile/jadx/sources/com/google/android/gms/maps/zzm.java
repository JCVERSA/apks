package com.google.android.gms.maps;

import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.maps.model.RuntimeRemoteException;

final class zzm implements LocationSource.OnLocationChangedListener {
    private final com.google.android.gms.maps.internal.zzah zzu;

    zzm(zzl zzlVar, com.google.android.gms.maps.internal.zzah zzahVar) {
        this.zzu = zzahVar;
    }

    @Override
    public final void onLocationChanged(Location location) {
        try {
            this.zzu.zza(location);
        } catch (RemoteException e10) {
            throw new RuntimeRemoteException(e10);
        }
    }
}
