package com.google.android.gms.maps;

final class zzu extends com.google.android.gms.maps.internal.zzu {
    private final GoogleMap.OnCameraMoveStartedListener zzac;

    zzu(GoogleMap googleMap, GoogleMap.OnCameraMoveStartedListener onCameraMoveStartedListener) {
        this.zzac = onCameraMoveStartedListener;
    }

    @Override
    public final void onCameraMoveStarted(int i10) {
        this.zzac.onCameraMoveStarted(i10);
    }
}
