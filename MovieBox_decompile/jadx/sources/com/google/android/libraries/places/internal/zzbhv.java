package com.google.android.libraries.places.internal;

final class zzbhv implements Runnable {
    final zzbcf zza;
    final zzbhx zzb;

    zzbhv(zzbhx zzbhxVar, zzbcf zzbcfVar) {
        this.zza = zzbcfVar;
        this.zzb = zzbhxVar;
    }

    @Override
    public final void run() {
        this.zzb.zza.zze(this.zza);
    }
}
