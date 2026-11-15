package com.google.android.gms.measurement.internal;

final class zzkv implements Runnable {
    private final Boolean zza;
    private final zzjq zzb;

    zzkv(zzjq zzjqVar, Boolean bool) {
        this.zza = bool;
        this.zzb = zzjqVar;
    }

    @Override
    public final void run() {
        this.zzb.zza(this.zza, true);
    }
}
