package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.internal.zzbc;
import com.google.android.gms.maps.model.PointOfInterest;

final class zzs extends zzbc {
    private final GoogleMap.OnPoiClickListener zzaa;

    zzs(GoogleMap googleMap, GoogleMap.OnPoiClickListener onPoiClickListener) {
        this.zzaa = onPoiClickListener;
    }

    @Override
    public final void zza(PointOfInterest pointOfInterest) throws RemoteException {
        this.zzaa.onPoiClick(pointOfInterest);
    }
}
