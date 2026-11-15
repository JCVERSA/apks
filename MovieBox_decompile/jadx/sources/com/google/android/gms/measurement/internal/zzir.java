package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

final class zzir implements Callable<List<zzae>> {
    private final String zza;
    private final String zzb;
    private final String zzc;
    private final zzic zzd;

    zzir(zzic zzicVar, String str, String str2, String str3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = zzicVar;
    }

    @Override
    public final List<zzae> call() throws Exception {
        this.zzd.zza.zzr();
        return this.zzd.zza.zzf().zza(this.zza, this.zzb, this.zzc);
    }
}
