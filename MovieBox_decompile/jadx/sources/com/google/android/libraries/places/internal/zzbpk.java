package com.google.android.libraries.places.internal;

final class zzbpk implements Runnable {
    final zzbpl zza;

    zzbpk(zzbpl zzbplVar) {
        this.zza = zzbplVar;
    }

    @Override
    public final void run() {
        zzbpo zzbpoVar = this.zza.zzb;
        if (zzbpoVar.zzD) {
            return;
        }
        zzbpoVar.zzy.zzg();
    }
}
