package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.zzas;
import com.google.android.gms.maps.model.Marker;

final class zzb extends zzas {
    private final GoogleMap.OnMarkerClickListener zzj;

    zzb(GoogleMap googleMap, GoogleMap.OnMarkerClickListener onMarkerClickListener) {
        this.zzj = onMarkerClickListener;
    }

    @Override
    public final boolean zza(com.google.android.gms.internal.maps.zzt zztVar) {
        return this.zzj.onMarkerClick(new Marker(zztVar));
    }
}
