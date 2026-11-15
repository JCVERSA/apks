package com.google.android.libraries.places.internal;

final class zzbgn implements Runnable {
    final zzayn zza;
    final zzbcf zzb;
    final zzbgz zzc;

    zzbgn(zzbgz zzbgzVar, zzayn zzaynVar, zzbcf zzbcfVar) {
        this.zza = zzaynVar;
        this.zzb = zzbcfVar;
        this.zzc = zzbgzVar;
    }

    @Override
    public final void run() {
        this.zzc.zzh.zze(this.zza, this.zzb);
    }
}
