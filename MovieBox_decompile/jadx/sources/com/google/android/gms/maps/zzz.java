package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.zzao;
import com.google.android.gms.maps.model.LatLng;

final class zzz extends zzao {
    private final GoogleMap.OnMapLongClickListener zzah;

    zzz(GoogleMap googleMap, GoogleMap.OnMapLongClickListener onMapLongClickListener) {
        this.zzah = onMapLongClickListener;
    }

    @Override
    public final void onMapLongClick(LatLng latLng) {
        this.zzah.onMapLongClick(latLng);
    }
}
