package com.google.android.gms.measurement.internal;

final class zzkx implements Runnable {
    private final zzje zza;
    private final long zzb;
    private final long zzc;
    private final boolean zzd;
    private final zzje zze;
    private final zzjq zzf;

    zzkx(zzjq zzjqVar, zzje zzjeVar, long j10, long j11, boolean z10, zzje zzjeVar2) {
        this.zza = zzjeVar;
        this.zzb = j10;
        this.zzc = j11;
        this.zzd = z10;
        this.zze = zzjeVar2;
        this.zzf = zzjqVar;
    }

    @Override
    public final void run() {
        this.zzf.zza(this.zza);
        if (!com.google.android.gms.internal.measurement.zznm.zza() || !this.zzf.zze().zza(zzbh.zzcx)) {
            this.zzf.zza(this.zzb, false);
        }
        zzjq.zza(this.zzf, this.zza, this.zzc, true, this.zzd);
        zzjq.zza(this.zzf, this.zza, this.zze);
    }
}
