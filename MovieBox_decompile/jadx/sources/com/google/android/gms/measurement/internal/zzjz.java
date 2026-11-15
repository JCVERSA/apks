package com.google.android.gms.measurement.internal;

import java.util.concurrent.Executor;

final class zzjz implements Executor {
    private final zzjq zza;

    zzjz(zzjq zzjqVar) {
        this.zza = zzjqVar;
    }

    @Override
    public final void execute(Runnable runnable) {
        this.zza.zzl().zzb(runnable);
    }
}
