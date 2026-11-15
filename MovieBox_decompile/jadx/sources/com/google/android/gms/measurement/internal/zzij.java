package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

final class zzij implements Runnable {
    private final zzo zza;
    private final zzic zzb;

    zzij(zzic zzicVar, zzo zzoVar) {
        this.zza = zzoVar;
        this.zzb = zzicVar;
    }

    @Override
    public final void run() {
        this.zzb.zza.zzr();
        zznv zznvVar = this.zzb.zza;
        zzo zzoVar = this.zza;
        zznvVar.zzl().zzt();
        zznvVar.zzs();
        Preconditions.checkNotEmpty(zzoVar.zza);
        zznvVar.zza(zzoVar);
    }
}
