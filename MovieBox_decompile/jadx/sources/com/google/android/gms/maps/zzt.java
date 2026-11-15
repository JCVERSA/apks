package com.google.android.gms.maps;

import com.google.android.gms.maps.model.CameraPosition;

final class zzt extends com.google.android.gms.maps.internal.zzm {
    private final GoogleMap.OnCameraChangeListener zzab;

    zzt(GoogleMap googleMap, GoogleMap.OnCameraChangeListener onCameraChangeListener) {
        this.zzab = onCameraChangeListener;
    }

    @Override
    public final void onCameraChange(CameraPosition cameraPosition) {
        this.zzab.onCameraChange(cameraPosition);
    }
}
