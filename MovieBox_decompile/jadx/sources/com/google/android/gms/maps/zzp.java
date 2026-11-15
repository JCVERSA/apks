package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.zzbe;
import com.google.android.gms.maps.model.Polygon;

final class zzp extends zzbe {
    private final GoogleMap.OnPolygonClickListener zzx;

    zzp(GoogleMap googleMap, GoogleMap.OnPolygonClickListener onPolygonClickListener) {
        this.zzx = onPolygonClickListener;
    }

    @Override
    public final void zza(com.google.android.gms.internal.maps.zzw zzwVar) {
        this.zzx.onPolygonClick(new Polygon(zzwVar));
    }
}
