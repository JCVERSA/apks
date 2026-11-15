package com.google.android.libraries.places.internal;

final class zzbhj implements Runnable {
    final zzazc zza;
    final zzbhy zzb;

    zzbhj(zzbhy zzbhyVar, zzazc zzazcVar) {
        this.zza = zzazcVar;
        this.zzb = zzbhyVar;
    }

    @Override
    public final void run() {
        this.zzb.zzc.zzv(this.zza);
    }
}
