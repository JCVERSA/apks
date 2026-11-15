package com.google.android.libraries.places.internal;

final class zzbhk implements Runnable {
    final zzazq zza;
    final zzbhy zzb;

    zzbhk(zzbhy zzbhyVar, zzazq zzazqVar) {
        this.zza = zzazqVar;
        this.zzb = zzbhyVar;
    }

    @Override
    public final void run() {
        this.zzb.zzc.zzl(this.zza);
    }
}
