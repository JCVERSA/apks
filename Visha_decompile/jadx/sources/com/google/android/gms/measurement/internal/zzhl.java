package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

final class zzhl implements Runnable {
    final long zza;
    final g zzb;

    public zzhl(g gVar, long j) {
        this.zzb = gVar;
        this.zza = j;
    }

    @Override
    public final void run() {
        this.zzb.y(this.zza, true);
        this.zzb.a.L().R(new AtomicReference());
    }
}
