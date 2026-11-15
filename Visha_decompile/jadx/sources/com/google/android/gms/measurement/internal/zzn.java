package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzcf;

final class zzn implements Runnable {
    final zzcf zza;
    final AppMeasurementDynamiteService zzb;

    public zzn(AppMeasurementDynamiteService appMeasurementDynamiteService, zzcf zzcfVar) {
        this.zzb = appMeasurementDynamiteService;
        this.zza = zzcfVar;
    }

    @Override
    public final void run() {
        this.zzb.zza.N().B(this.zza, this.zzb.zza.n());
    }
}
