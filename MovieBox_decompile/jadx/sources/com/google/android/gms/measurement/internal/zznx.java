package com.google.android.gms.measurement.internal;

final class zznx implements Runnable {
    private final zzok zza;
    private final zznv zzb;

    zznx(zznv zznvVar, zzok zzokVar) {
        this.zza = zzokVar;
        this.zzb = zznvVar;
    }

    @Override
    public final void run() {
        zznv.zza(this.zzb, this.zza);
        this.zzb.zzv();
    }
}
