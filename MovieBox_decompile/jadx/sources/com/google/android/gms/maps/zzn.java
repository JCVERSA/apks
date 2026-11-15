package com.google.android.gms.maps;

import com.google.android.gms.maps.model.GroundOverlay;

final class zzn extends com.google.android.gms.maps.internal.zzy {
    private final GoogleMap.OnGroundOverlayClickListener zzv;

    zzn(GoogleMap googleMap, GoogleMap.OnGroundOverlayClickListener onGroundOverlayClickListener) {
        this.zzv = onGroundOverlayClickListener;
    }

    @Override
    public final void zza(com.google.android.gms.internal.maps.zzk zzkVar) {
        this.zzv.onGroundOverlayClick(new GroundOverlay(zzkVar));
    }
}
