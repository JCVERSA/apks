package com.google.android.gms.ads.internal.util;

final class zza implements Runnable {
    final zzb zza;

    public zza(zzb zzbVar) {
        this.zza = zzbVar;
    }

    @Override
    public final void run() {
        zzb zzbVar = this.zza;
        zzbVar.b = Thread.currentThread();
        zzbVar.zza();
    }
}
