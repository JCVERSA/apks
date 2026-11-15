package com.google.android.libraries.places.internal;

final class zzbou implements Runnable {
    final zzbdo zza;
    final zzbfs zzb;
    final zzbcf zzc;
    final zzbpo zzd;

    zzbou(zzbpo zzbpoVar, zzbdo zzbdoVar, zzbfs zzbfsVar, zzbcf zzbcfVar) {
        this.zza = zzbdoVar;
        this.zzb = zzbfsVar;
        this.zzc = zzbcfVar;
        this.zzd = zzbpoVar;
    }

    @Override
    public final void run() {
        this.zzd.zzD = true;
        this.zzd.zzy.zzd(this.zza, this.zzb, this.zzc);
    }
}
