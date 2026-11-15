package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

final class zzkk implements Runnable {
    private final AtomicReference zza;
    private final boolean zzb;
    private final zzjq zzc;

    zzkk(zzjq zzjqVar, AtomicReference atomicReference, boolean z10) {
        this.zza = atomicReference;
        this.zzb = z10;
        this.zzc = zzjqVar;
    }

    @Override
    public final void run() {
        this.zzc.zzo().zza(this.zza, this.zzb);
    }
}
