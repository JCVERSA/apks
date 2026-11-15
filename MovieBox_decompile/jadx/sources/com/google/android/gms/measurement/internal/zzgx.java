package com.google.android.gms.measurement.internal;

final class zzgx implements Runnable {
    private final boolean zza;
    private final zzgy zzb;

    zzgx(zzgy zzgyVar, boolean z10) {
        this.zza = z10;
        this.zzb = zzgyVar;
    }

    @Override
    public final void run() {
        this.zzb.zza.zza(this.zza);
    }
}
