package com.google.android.libraries.places.internal;

final class zzbgv implements Runnable {
    final Object zza;
    final zzbgy zzb;

    zzbgv(zzbgy zzbgyVar, Object obj) {
        this.zza = obj;
        this.zzb = zzbgyVar;
    }

    @Override
    public final void run() {
        this.zzb.zza.zzc(this.zza);
    }
}
