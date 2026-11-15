package com.google.android.gms.measurement.internal;

final class zzc implements Runnable {
    final long zza;
    final b zzb;

    public zzc(b bVar, long j) {
        this.zzb = bVar;
        this.zza = j;
    }

    @Override
    public final void run() {
        this.zzb.p(this.zza);
    }
}
