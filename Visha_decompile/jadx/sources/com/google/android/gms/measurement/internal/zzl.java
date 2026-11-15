package com.google.android.gms.measurement.internal;

final class zzl implements Runnable {
    final l zza;
    final AppMeasurementDynamiteService zzb;

    public zzl(AppMeasurementDynamiteService appMeasurementDynamiteService, l lVar) {
        this.zzb = appMeasurementDynamiteService;
        this.zza = lVar;
    }

    @Override
    public final void run() {
        this.zzb.zza.I().G(this.zza);
    }
}
