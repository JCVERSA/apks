package com.google.android.gms.measurement.internal;

final class zzmz implements Runnable {
    private final zznv zza;
    private final Runnable zzb;

    zzmz(zzmy zzmyVar, zznv zznvVar, Runnable runnable) {
        this.zza = zznvVar;
        this.zzb = runnable;
    }

    @Override
    public final void run() {
        this.zza.zzr();
        this.zza.zza(this.zzb);
        this.zza.zzw();
    }
}
