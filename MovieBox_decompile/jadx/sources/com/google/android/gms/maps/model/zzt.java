package com.google.android.gms.maps.model;

import com.google.android.gms.internal.maps.zzag;

final class zzt extends zzag {
    private final TileProvider zzen;

    zzt(TileOverlayOptions tileOverlayOptions, TileProvider tileProvider) {
        this.zzen = tileProvider;
    }

    @Override
    public final Tile getTile(int i10, int i11, int i12) {
        return this.zzen.getTile(i10, i11, i12);
    }
}
