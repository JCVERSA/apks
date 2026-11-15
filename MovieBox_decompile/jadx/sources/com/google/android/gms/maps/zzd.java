package com.google.android.gms.maps;

import com.google.android.gms.maps.model.Marker;

final class zzd extends com.google.android.gms.maps.internal.zzac {
    private final GoogleMap.OnInfoWindowClickListener zzl;

    zzd(GoogleMap googleMap, GoogleMap.OnInfoWindowClickListener onInfoWindowClickListener) {
        this.zzl = onInfoWindowClickListener;
    }

    @Override
    public final void zze(com.google.android.gms.internal.maps.zzt zztVar) {
        this.zzl.onInfoWindowClick(new Marker(zztVar));
    }
}
