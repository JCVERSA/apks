package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.zzaq;

final class zzac extends zzaq {
    private final OnMapReadyCallback zzbc;

    zzac(MapView.zza zzaVar, OnMapReadyCallback onMapReadyCallback) {
        this.zzbc = onMapReadyCallback;
    }

    @Override
    public final void zza(IGoogleMapDelegate iGoogleMapDelegate) throws RemoteException {
        this.zzbc.onMapReady(new GoogleMap(iGoogleMapDelegate));
    }
}
