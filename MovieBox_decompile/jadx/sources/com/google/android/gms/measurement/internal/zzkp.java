package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

final class zzkp implements Runnable {
    private final AtomicReference zza;
    private final String zzb = null;
    private final String zzc;
    private final String zzd;
    private final boolean zze;
    private final zzjq zzf;

    zzkp(zzjq zzjqVar, AtomicReference atomicReference, String str, String str2, String str3, boolean z10) {
        this.zza = atomicReference;
        this.zzc = str2;
        this.zzd = str3;
        this.zze = z10;
        this.zzf = zzjqVar;
    }

    @Override
    public final void run() {
        this.zzf.zzu.zzr().zza(this.zza, null, this.zzc, this.zzd, this.zze);
    }
}
