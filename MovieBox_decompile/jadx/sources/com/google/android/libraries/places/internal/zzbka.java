package com.google.android.libraries.places.internal;

final class zzbka implements Runnable {
    final zzbkb zza;

    zzbka(zzbkb zzbkbVar) {
        this.zza = zzbkbVar;
    }

    @Override
    public final void run() {
        zzbkb zzbkbVar = this.zza;
        zzbkbVar.zzc.zzr.remove(zzbkbVar.zza);
        if (this.zza.zzc.zzv.zza() == zzaze.SHUTDOWN && this.zza.zzc.zzr.isEmpty()) {
            zzbkd.zzB(this.zza.zzc);
        }
    }
}
