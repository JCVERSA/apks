package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.zzbo;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;

final class zzag extends zzbo {
    private final StreetViewPanorama.OnStreetViewPanoramaLongClickListener zzbs;

    zzag(StreetViewPanorama streetViewPanorama, StreetViewPanorama.OnStreetViewPanoramaLongClickListener onStreetViewPanoramaLongClickListener) {
        this.zzbs = onStreetViewPanoramaLongClickListener;
    }

    @Override
    public final void onStreetViewPanoramaLongClick(StreetViewPanoramaOrientation streetViewPanoramaOrientation) {
        this.zzbs.onStreetViewPanoramaLongClick(streetViewPanoramaOrientation);
    }
}
