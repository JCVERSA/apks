package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

final class zzjb implements Callable<List<zzop>> {
    private final String zza;
    private final zzic zzb;

    zzjb(zzic zzicVar, String str) {
        this.zza = str;
        this.zzb = zzicVar;
    }

    @Override
    public final List<zzop> call() throws Exception {
        this.zzb.zza.zzr();
        return this.zzb.zza.zzf().zzl(this.zza);
    }
}
