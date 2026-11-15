package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.internal.zzaw;

final class zzi extends zzaw {
    private final GoogleMap.OnMyLocationButtonClickListener zzq;

    zzi(GoogleMap googleMap, GoogleMap.OnMyLocationButtonClickListener onMyLocationButtonClickListener) {
        this.zzq = onMyLocationButtonClickListener;
    }

    @Override
    public final boolean onMyLocationButtonClick() throws RemoteException {
        return this.zzq.onMyLocationButtonClick();
    }
}
