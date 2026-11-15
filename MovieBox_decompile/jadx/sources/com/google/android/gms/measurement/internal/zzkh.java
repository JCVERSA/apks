package com.google.android.gms.measurement.internal;

final class zzkh implements Runnable {
    private final String zza;
    private final String zzb;
    private final Object zzc;
    private final long zzd;
    private final zzjq zze;

    zzkh(zzjq zzjqVar, String str, String str2, Object obj, long j10) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = obj;
        this.zzd = j10;
        this.zze = zzjqVar;
    }

    @Override
    public final void run() {
        this.zze.zza(this.zza, this.zzb, this.zzc, this.zzd);
    }
}
