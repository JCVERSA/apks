package com.google.android.gms.maps;

final class zzw extends com.google.android.gms.maps.internal.zzq {
    private final GoogleMap.OnCameraMoveCanceledListener zzae;

    zzw(GoogleMap googleMap, GoogleMap.OnCameraMoveCanceledListener onCameraMoveCanceledListener) {
        this.zzae = onCameraMoveCanceledListener;
    }

    @Override
    public final void onCameraMoveCanceled() {
        this.zzae.onCameraMoveCanceled();
    }
}
