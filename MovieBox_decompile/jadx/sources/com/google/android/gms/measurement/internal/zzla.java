package com.google.android.gms.measurement.internal;

final class zzla implements Runnable {
    private final zzje zza;
    private final long zzb;
    private final boolean zzc;
    private final zzje zzd;
    private final zzjq zze;

    zzla(zzjq zzjqVar, zzje zzjeVar, long j10, boolean z10, zzje zzjeVar2) {
        this.zza = zzjeVar;
        this.zzb = j10;
        this.zzc = z10;
        this.zzd = zzjeVar2;
        this.zze = zzjqVar;
    }

    @Override
    public final void run() {
        this.zze.zza(this.zza);
        zzjq.zza(this.zze, this.zza, this.zzb, false, this.zzc);
        zzjq.zza(this.zze, this.zza, this.zzd);
    }
}
