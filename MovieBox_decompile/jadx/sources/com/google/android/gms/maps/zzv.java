package com.google.android.gms.maps;

final class zzv extends com.google.android.gms.maps.internal.zzs {
    private final GoogleMap.OnCameraMoveListener zzad;

    zzv(GoogleMap googleMap, GoogleMap.OnCameraMoveListener onCameraMoveListener) {
        this.zzad = onCameraMoveListener;
    }

    @Override
    public final void onCameraMove() {
        this.zzad.onCameraMove();
    }
}
