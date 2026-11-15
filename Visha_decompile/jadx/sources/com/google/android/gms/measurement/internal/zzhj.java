package com.google.android.gms.measurement.internal;

final class zzhj implements Runnable {
    final String zza;
    final String zzb;
    final Object zzc;
    final long zzd;
    final g zze;

    public zzhj(g gVar, String str, String str2, Object obj, long j) {
        this.zze = gVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = obj;
        this.zzd = j;
    }

    @Override
    public final void run() {
        this.zze.L(this.zza, this.zzb, this.zzc, this.zzd);
    }
}
