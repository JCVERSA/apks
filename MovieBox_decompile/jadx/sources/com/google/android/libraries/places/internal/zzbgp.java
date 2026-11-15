package com.google.android.libraries.places.internal;

final class zzbgp implements Runnable {
    final Object zza;
    final zzbgz zzb;

    zzbgp(zzbgz zzbgzVar, Object obj) {
        this.zza = obj;
        this.zzb = zzbgzVar;
    }

    @Override
    public final void run() {
        this.zzb.zzh.zzd(this.zza);
    }
}
