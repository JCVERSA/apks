package com.google.android.libraries.places.internal;

final class zzbpe implements Runnable {
    final zzbcf zza;
    final zzbpl zzb;

    zzbpe(zzbpl zzbplVar, zzbcf zzbcfVar) {
        this.zza = zzbcfVar;
        this.zzb = zzbplVar;
    }

    @Override
    public final void run() {
        this.zzb.zzb.zzy.zze(this.zza);
    }
}
