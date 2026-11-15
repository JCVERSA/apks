package com.google.android.gms.internal.location;

import android.location.Location;

final class zzau extends com.google.android.gms.location.zzbc {
    private final com.google.android.gms.common.api.internal.d zza;

    public zzau(com.google.android.gms.common.api.internal.d dVar) {
        this.zza = dVar;
    }

    public final synchronized void zzc() {
        this.zza.a();
    }

    @Override
    public final synchronized void zzd(Location location) {
        this.zza.c(new c(this, location));
    }
}
