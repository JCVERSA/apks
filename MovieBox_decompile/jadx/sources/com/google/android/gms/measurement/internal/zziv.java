package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;

final class zziv implements Callable<zzaj> {
    private final zzo zza;
    private final zzic zzb;

    zziv(zzic zzicVar, zzo zzoVar) {
        this.zza = zzoVar;
        this.zzb = zzicVar;
    }

    @Override
    public final zzaj call() throws Exception {
        this.zzb.zza.zzr();
        return new zzaj(this.zzb.zza.zza(this.zza.zza));
    }
}
