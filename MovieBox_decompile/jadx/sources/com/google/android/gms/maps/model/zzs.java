package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.internal.maps.zzaf;

final class zzs implements TileProvider {
    private final zzaf zzel;
    private final TileOverlayOptions zzem;

    zzs(TileOverlayOptions tileOverlayOptions) {
        this.zzem = tileOverlayOptions;
        this.zzel = tileOverlayOptions.zzei;
    }

    @Override
    public final Tile getTile(int i10, int i11, int i12) {
        try {
            return this.zzel.getTile(i10, i11, i12);
        } catch (RemoteException unused) {
            return null;
        }
    }
}
