package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

final class zzhq implements Runnable {
    final AtomicReference zza;
    final String zzb;
    final String zzc;
    final boolean zzd;
    final g zze;

    public zzhq(g gVar, AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        this.zze = gVar;
        this.zza = atomicReference;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = z;
    }

    @Override
    public final void run() {
        this.zze.a.L().W(this.zza, null, this.zzb, this.zzc, this.zzd);
    }
}
