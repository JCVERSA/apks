package com.google.android.gms.maps;

import com.google.android.gms.maps.model.Marker;

final class zzf extends com.google.android.gms.maps.internal.zzae {
    private final GoogleMap.OnInfoWindowCloseListener zzn;

    zzf(GoogleMap googleMap, GoogleMap.OnInfoWindowCloseListener onInfoWindowCloseListener) {
        this.zzn = onInfoWindowCloseListener;
    }

    @Override
    public final void zzg(com.google.android.gms.internal.maps.zzt zztVar) {
        this.zzn.onInfoWindowClose(new Marker(zztVar));
    }
}
