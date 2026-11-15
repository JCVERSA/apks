package com.google.android.gms.measurement.internal;

final class zzik implements Runnable {
    private final String zza;
    private final String zzb;
    private final String zzc;
    private final long zzd;
    private final zzic zze;

    zzik(zzic zzicVar, String str, String str2, String str3, long j10) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = j10;
        this.zze = zzicVar;
    }

    @Override
    public final void run() {
        String str = this.zza;
        if (str == null) {
            this.zze.zza.zza(this.zzb, (zzlk) null);
        } else {
            this.zze.zza.zza(this.zzb, new zzlk(this.zzc, str, this.zzd));
        }
    }
}
