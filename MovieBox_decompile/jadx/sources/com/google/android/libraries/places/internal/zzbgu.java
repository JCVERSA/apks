package com.google.android.libraries.places.internal;

final class zzbgu implements Runnable {
    final zzbcf zza;
    final zzbgy zzb;

    zzbgu(zzbgy zzbgyVar, zzbcf zzbcfVar) {
        this.zza = zzbcfVar;
        this.zzb = zzbgyVar;
    }

    @Override
    public final void run() {
        this.zzb.zza.zzb(this.zza);
    }
}
