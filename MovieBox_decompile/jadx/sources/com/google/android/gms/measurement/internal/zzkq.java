package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;

final class zzkq implements Runnable {
    private final AtomicReference zza;
    private final String zzb = null;
    private final String zzc;
    private final String zzd;
    private final zzjq zze;

    zzkq(zzjq zzjqVar, AtomicReference atomicReference, String str, String str2, String str3) {
        this.zza = atomicReference;
        this.zzc = str2;
        this.zzd = str3;
        this.zze = zzjqVar;
    }

    @Override
    public final void run() {
        this.zze.zzu.zzr().zza(this.zza, (String) null, this.zzc, this.zzd);
    }
}
