package com.google.android.libraries.places.internal;

final class zzbhw implements Runnable {
    final zzbdo zza;
    final zzbfs zzb;
    final zzbcf zzc;
    final zzbhx zzd;

    zzbhw(zzbhx zzbhxVar, zzbdo zzbdoVar, zzbfs zzbfsVar, zzbcf zzbcfVar) {
        this.zza = zzbdoVar;
        this.zzb = zzbfsVar;
        this.zzc = zzbcfVar;
        this.zzd = zzbhxVar;
    }

    @Override
    public final void run() {
        this.zzd.zza.zzd(this.zza, this.zzb, this.zzc);
    }
}
