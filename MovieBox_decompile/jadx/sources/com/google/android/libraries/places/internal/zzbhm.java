package com.google.android.libraries.places.internal;

final class zzbhm implements Runnable {
    final int zza;
    final zzbhy zzb;

    zzbhm(zzbhy zzbhyVar, int i10) {
        this.zza = i10;
        this.zzb = zzbhyVar;
    }

    @Override
    public final void run() {
        this.zzb.zzc.zzn(this.zza);
    }
}
