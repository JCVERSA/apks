package com.google.android.gms.maps;

import android.location.Location;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.maps.internal.zzba;

final class zzj extends zzba {
    private final GoogleMap.OnMyLocationClickListener zzr;

    zzj(GoogleMap googleMap, GoogleMap.OnMyLocationClickListener onMyLocationClickListener) {
        this.zzr = onMyLocationClickListener;
    }

    @Override
    public final void onMyLocationClick(@NonNull Location location) throws RemoteException {
        this.zzr.onMyLocationClick(location);
    }
}
