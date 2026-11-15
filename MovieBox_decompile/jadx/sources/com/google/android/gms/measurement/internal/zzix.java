package com.google.android.gms.measurement.internal;

final class zzix implements Runnable {
    private final zzbf zza;
    private final String zzb;
    private final zzic zzc;

    zzix(zzic zzicVar, zzbf zzbfVar, String str) {
        this.zza = zzbfVar;
        this.zzb = str;
        this.zzc = zzicVar;
    }

    @Override
    public final void run() {
        this.zzc.zza.zzr();
        this.zzc.zza.zza(this.zza, this.zzb);
    }
}
