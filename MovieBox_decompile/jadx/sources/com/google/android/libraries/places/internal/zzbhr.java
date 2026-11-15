package com.google.android.libraries.places.internal;

final class zzbhr implements Runnable {
    final zzbdo zza;
    final zzbhy zzb;

    zzbhr(zzbhy zzbhyVar, zzbdo zzbdoVar) {
        this.zza = zzbdoVar;
        this.zzb = zzbhyVar;
    }

    @Override
    public final void run() {
        this.zzb.zzc.zzh(this.zza);
    }
}
