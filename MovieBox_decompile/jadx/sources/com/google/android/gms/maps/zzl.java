package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.ILocationSourceDelegate;

final class zzl extends ILocationSourceDelegate.zza {
    private final LocationSource zzt;

    zzl(GoogleMap googleMap, LocationSource locationSource) {
        this.zzt = locationSource;
    }

    @Override
    public final void activate(com.google.android.gms.maps.internal.zzah zzahVar) {
        this.zzt.activate(new zzm(this, zzahVar));
    }

    @Override
    public final void deactivate() {
        this.zzt.deactivate();
    }
}
