package com.google.android.libraries.places.internal;

final class zzbpg implements Runnable {
    final zzboy zza;
    final zzbpm zzb;
    final zzbpl zzc;

    zzbpg(zzbpl zzbplVar, zzboy zzboyVar, zzbpm zzbpmVar) {
        this.zza = zzboyVar;
        this.zzb = zzbpmVar;
        this.zzc = zzbplVar;
    }

    @Override
    public final void run() {
        synchronized (this.zza.zza) {
            zzboy zzboyVar = this.zza;
            if (zzboyVar.zzc) {
                return;
            }
            zzboyVar.zza();
            this.zzc.zzb.zzd.execute(new zzbpf(this));
        }
    }
}
