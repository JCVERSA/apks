package com.google.android.gms.measurement.internal;

final class zzc implements Runnable {
    private final long zza;
    private final zzb zzb;

    zzc(zzb zzbVar, long j10) {
        this.zza = j10;
        this.zzb = zzbVar;
    }

    @Override
    public final void run() {
        this.zzb.zzb(this.zza);
    }
}
