package com.google.android.libraries.places.internal;

final class zzbhl implements Runnable {
    final int zza;
    final zzbhy zzb;

    zzbhl(zzbhy zzbhyVar, int i10) {
        this.zza = i10;
        this.zzb = zzbhyVar;
    }

    @Override
    public final void run() {
        this.zzb.zzc.zzm(this.zza);
    }
}
