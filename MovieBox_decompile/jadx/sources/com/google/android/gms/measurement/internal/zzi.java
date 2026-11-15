package com.google.android.gms.measurement.internal;

final class zzi implements Runnable {
    private final com.google.android.gms.internal.measurement.zzdo zza;
    private final AppMeasurementDynamiteService zzb;

    zzi(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzdo zzdoVar) {
        this.zza = zzdoVar;
        this.zzb = appMeasurementDynamiteService;
    }

    @Override
    public final void run() {
        this.zzb.zza.zzr().zza(this.zza);
    }
}
