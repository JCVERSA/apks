package com.google.android.gms.maps;

import com.google.android.gms.maps.model.LatLng;

final class zzy extends com.google.android.gms.maps.internal.zzak {
    private final GoogleMap.OnMapClickListener zzag;

    zzy(GoogleMap googleMap, GoogleMap.OnMapClickListener onMapClickListener) {
        this.zzag = onMapClickListener;
    }

    @Override
    public final void onMapClick(LatLng latLng) {
        this.zzag.onMapClick(latLng);
    }
}
