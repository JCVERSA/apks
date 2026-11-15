package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.zzbg;
import com.google.android.gms.maps.model.Polyline;

final class zzq extends zzbg {
    private final GoogleMap.OnPolylineClickListener zzy;

    zzq(GoogleMap googleMap, GoogleMap.OnPolylineClickListener onPolylineClickListener) {
        this.zzy = onPolylineClickListener;
    }

    @Override
    public final void zza(com.google.android.gms.internal.maps.zzz zzzVar) {
        this.zzy.onPolylineClick(new Polyline(zzzVar));
    }
}
