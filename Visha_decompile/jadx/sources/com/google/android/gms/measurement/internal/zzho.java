package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

final class zzho implements Runnable {
    final AtomicReference zza;
    final String zzb;
    final String zzc;
    final g zzd;

    public zzho(g gVar, AtomicReference atomicReference, String str, String str2, String str3) {
        this.zzd = gVar;
        this.zza = atomicReference;
        this.zzb = str2;
        this.zzc = str3;
    }

    @Override
    public final void run() {
        this.zzd.a.L().T(this.zza, null, this.zzb, this.zzc);
    }
}
