package com.google.android.gms.measurement.internal;

final class zziu implements Runnable {
    private final zzbf zza;
    private final zzo zzb;
    private final zzic zzc;

    zziu(zzic zzicVar, zzbf zzbfVar, zzo zzoVar) {
        this.zza = zzbfVar;
        this.zzb = zzoVar;
        this.zzc = zzicVar;
    }

    @Override
    public final void run() {
        this.zzc.zzc(this.zzc.zzb(this.zza, this.zzb), this.zzb);
    }
}
