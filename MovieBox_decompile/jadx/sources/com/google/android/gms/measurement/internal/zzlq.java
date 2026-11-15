package com.google.android.gms.measurement.internal;

final class zzlq implements Runnable {
    private final zzlk zza;
    private final long zzb;
    private final zzlj zzc;

    zzlq(zzlj zzljVar, zzlk zzlkVar, long j10) {
        this.zza = zzlkVar;
        this.zzb = j10;
        this.zzc = zzljVar;
    }

    @Override
    public final void run() {
        this.zzc.zza(this.zza, false, this.zzb);
        zzlj zzljVar = this.zzc;
        zzljVar.zza = null;
        zzljVar.zzo().zza((zzlk) null);
    }
}
