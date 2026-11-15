package com.google.android.gms.maps;

import com.google.android.gms.maps.model.Circle;

final class zzo extends com.google.android.gms.maps.internal.zzw {
    private final GoogleMap.OnCircleClickListener zzw;

    zzo(GoogleMap googleMap, GoogleMap.OnCircleClickListener onCircleClickListener) {
        this.zzw = onCircleClickListener;
    }

    @Override
    public final void zza(com.google.android.gms.internal.maps.zzh zzhVar) {
        this.zzw.onCircleClick(new Circle(zzhVar));
    }
}
