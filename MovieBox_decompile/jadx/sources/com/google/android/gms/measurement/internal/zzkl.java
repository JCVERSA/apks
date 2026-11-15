package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

final class zzkl implements Runnable {
    private final long zza;
    private final zzjq zzb;

    zzkl(zzjq zzjqVar, long j10) {
        this.zza = j10;
        this.zzb = zzjqVar;
    }

    @Override
    public final void run() {
        this.zzb.zzb(this.zza);
        this.zzb.zzo().zza(new AtomicReference<>());
    }
}
