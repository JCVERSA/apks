package com.google.android.libraries.places.internal;

final class zzbgl implements Runnable {
    final StringBuilder zza;
    final zzbgz zzb;

    zzbgl(zzbgz zzbgzVar, StringBuilder sb2) {
        this.zza = sb2;
        this.zzb = zzbgzVar;
    }

    @Override
    public final void run() {
        this.zzb.zzl(zzbdo.zze.zzg(this.zza.toString()), true);
    }
}
