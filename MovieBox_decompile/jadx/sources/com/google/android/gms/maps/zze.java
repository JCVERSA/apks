package com.google.android.gms.maps;

import com.google.android.gms.maps.model.Marker;

final class zze extends com.google.android.gms.maps.internal.zzag {
    private final GoogleMap.OnInfoWindowLongClickListener zzm;

    zze(GoogleMap googleMap, GoogleMap.OnInfoWindowLongClickListener onInfoWindowLongClickListener) {
        this.zzm = onInfoWindowLongClickListener;
    }

    @Override
    public final void zzf(com.google.android.gms.internal.maps.zzt zztVar) {
        this.zzm.onInfoWindowLongClick(new Marker(zztVar));
    }
}
