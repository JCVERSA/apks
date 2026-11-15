package com.google.android.gms.measurement.internal;

final class zzln implements Runnable {
    private final long zza;
    private final zzlj zzb;

    zzln(zzlj zzljVar, long j10) {
        this.zza = j10;
        this.zzb = zzljVar;
    }

    @Override
    public final void run() {
        this.zzb.zzc().zza(this.zza);
        this.zzb.zza = null;
    }
}
