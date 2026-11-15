package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Callable;

final class zzog implements Callable<String> {
    private final zzo zza;
    private final zznv zzb;

    zzog(zznv zznvVar, zzo zzoVar) {
        this.zza = zzoVar;
        this.zzb = zznvVar;
    }

    @Override
    public final String call() throws Exception {
        if (!this.zzb.zzb((String) Preconditions.checkNotNull(this.zza.zza)).zzh() || !zzje.zzb(this.zza.zzt).zzh()) {
            this.zzb.zzj().zzp().zza("Analytics storage consent denied. Returning null app instance id");
            return null;
        }
        zzg zzgVarZza = this.zzb.zza(this.zza);
        if (zzgVarZza != null) {
            return zzgVarZza.zzad();
        }
        this.zzb.zzj().zzu().zza("App info was null when attempting to get app instance id");
        return null;
    }
}
