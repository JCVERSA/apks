package com.google.android.gms.internal.location;

import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.zzaz;

final class zzar extends zzaz {
    private final com.google.android.gms.common.api.internal.d zza;

    public zzar(com.google.android.gms.common.api.internal.d dVar) {
        this.zza = dVar;
    }

    public final synchronized void zzc() {
        this.zza.a();
    }

    @Override
    public final void zzd(LocationResult locationResult) {
        this.zza.c(new a(this, locationResult));
    }

    @Override
    public final void zze(LocationAvailability locationAvailability) {
        this.zza.c(new b(this, locationAvailability));
    }
}
