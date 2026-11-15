package com.google.android.gms.measurement.internal;

import defpackage.b7j;

final class zzka implements Runnable {
    final long zza;
    final b7j zzb;

    public zzka(b7j b7jVar, long j) {
        this.zzb = b7jVar;
        this.zza = j;
    }

    @Override
    public final void run() {
        b7j.q(this.zzb, this.zza);
    }
}
