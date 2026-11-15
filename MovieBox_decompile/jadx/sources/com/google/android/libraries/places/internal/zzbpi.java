package com.google.android.libraries.places.internal;

final class zzbpi implements Runnable {
    final zzbpm zza;
    final zzbpl zzb;

    zzbpi(zzbpl zzbplVar, zzbpm zzbpmVar) {
        this.zza = zzbpmVar;
        this.zzb = zzbplVar;
    }

    @Override
    public final void run() {
        this.zzb.zzb.zzai(this.zza);
    }
}
