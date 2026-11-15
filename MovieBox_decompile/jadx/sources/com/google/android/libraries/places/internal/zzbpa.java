package com.google.android.libraries.places.internal;

final class zzbpa implements Runnable {
    final zzboy zza;
    final zzbpo zzb;

    zzbpa(zzbpo zzbpoVar, zzboy zzboyVar) {
        this.zzb = zzbpoVar;
        this.zza = zzboyVar;
    }

    @Override
    public final void run() {
        zzbpm zzbpmVarZzaf = this.zzb.zzaf(this.zzb.zzs.zze, false);
        if (zzbpmVarZzaf == null) {
            return;
        }
        this.zzb.zzd.execute(new zzboz(this, zzbpmVarZzaf));
    }
}
