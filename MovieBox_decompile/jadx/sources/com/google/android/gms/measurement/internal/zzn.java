package com.google.android.gms.measurement.internal;

final class zzn implements Runnable {
    private final com.google.android.gms.internal.measurement.zzdo zza;
    private final AppMeasurementDynamiteService zzb;

    zzn(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzdo zzdoVar) {
        this.zza = zzdoVar;
        this.zzb = appMeasurementDynamiteService;
    }

    @Override
    public final void run() {
        this.zzb.zza.zzt().zza(this.zza, this.zzb.zza.zzab());
    }
}
