package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.internal.zzam;

final class zzk extends zzam {
    private final GoogleMap.OnMapLoadedCallback zzs;

    zzk(GoogleMap googleMap, GoogleMap.OnMapLoadedCallback onMapLoadedCallback) {
        this.zzs = onMapLoadedCallback;
    }

    @Override
    public final void onMapLoaded() throws RemoteException {
        this.zzs.onMapLoaded();
    }
}
