package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

final class zzhx implements Thread.UncaughtExceptionHandler {
    private final String zza;
    private final zzhv zzb;

    public zzhx(zzhv zzhvVar, String str) {
        this.zzb = zzhvVar;
        Preconditions.checkNotNull(str);
        this.zza = str;
    }

    @Override
    public final synchronized void uncaughtException(Thread thread, Throwable th2) {
        this.zzb.zzj().zzg().zza(this.zza, th2);
    }
}
