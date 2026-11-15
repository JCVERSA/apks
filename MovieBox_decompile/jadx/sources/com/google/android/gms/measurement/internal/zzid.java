package com.google.android.gms.measurement.internal;

final class zzid implements Runnable {
    private final zzjo zza;
    private final zzhy zzb;

    zzid(zzhy zzhyVar, zzjo zzjoVar) {
        this.zza = zzjoVar;
        this.zzb = zzhyVar;
    }

    @Override
    public final void run() {
        zzhy.zza(this.zzb, this.zza);
        this.zzb.zza(this.zza.zzg);
    }
}
