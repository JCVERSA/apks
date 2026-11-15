package com.google.android.gms.maps;

import com.google.android.gms.maps.model.IndoorBuilding;

final class zza extends com.google.android.gms.maps.internal.zzaa {
    private final GoogleMap.OnIndoorStateChangeListener zzi;

    zza(GoogleMap googleMap, GoogleMap.OnIndoorStateChangeListener onIndoorStateChangeListener) {
        this.zzi = onIndoorStateChangeListener;
    }

    @Override
    public final void onIndoorBuildingFocused() {
        this.zzi.onIndoorBuildingFocused();
    }

    @Override
    public final void zza(com.google.android.gms.internal.maps.zzn zznVar) {
        this.zzi.onIndoorLevelActivated(new IndoorBuilding(zznVar));
    }
}
