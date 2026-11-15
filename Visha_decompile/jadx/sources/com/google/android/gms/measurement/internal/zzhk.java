package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

final class zzhk implements Runnable {
    final AtomicReference zza;
    final boolean zzb;
    final g zzc;

    public zzhk(g gVar, AtomicReference atomicReference, boolean z) {
        this.zzc = gVar;
        this.zza = atomicReference;
        this.zzb = z;
    }

    @Override
    public final void run() {
        this.zzc.a.L().U(this.zza, this.zzb);
    }
}
