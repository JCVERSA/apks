package com.google.android.gms.maps;

import android.location.Location;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.maps.internal.zzay;

final class zzh extends zzay {
    private final GoogleMap.OnMyLocationChangeListener zzp;

    zzh(GoogleMap googleMap, GoogleMap.OnMyLocationChangeListener onMyLocationChangeListener) {
        this.zzp = onMyLocationChangeListener;
    }

    @Override
    public final void zza(IObjectWrapper iObjectWrapper) {
        this.zzp.onMyLocationChange((Location) ObjectWrapper.unwrap(iObjectWrapper));
    }
}
