package com.google.android.gms.maps;

final class zzx extends com.google.android.gms.maps.internal.zzo {
    private final GoogleMap.OnCameraIdleListener zzaf;

    zzx(GoogleMap googleMap, GoogleMap.OnCameraIdleListener onCameraIdleListener) {
        this.zzaf = onCameraIdleListener;
    }

    @Override
    public final void onCameraIdle() {
        this.zzaf.onCameraIdle();
    }
}
