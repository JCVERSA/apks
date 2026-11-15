package com.google.android.gms.measurement.internal;

final class zzkg implements Runnable {
    private final long zza;
    private final zzjq zzb;

    zzkg(zzjq zzjqVar, long j10) {
        this.zza = j10;
        this.zzb = zzjqVar;
    }

    @Override
    public final void run() {
        this.zzb.zzk().zzf.zza(this.zza);
        this.zzb.zzj().zzc().zza("Session timeout duration set", Long.valueOf(this.zza));
    }
}
