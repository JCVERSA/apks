package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzcf;

final class zzj implements Runnable {
    final zzcf zza;
    final zzaw zzb;
    final String zzc;
    final AppMeasurementDynamiteService zzd;

    public zzj(AppMeasurementDynamiteService appMeasurementDynamiteService, zzcf zzcfVar, zzaw zzawVar, String str) {
        this.zzd = appMeasurementDynamiteService;
        this.zza = zzcfVar;
        this.zzb = zzawVar;
        this.zzc = str;
    }

    @Override
    public final void run() {
        this.zzd.zza.L().o(this.zza, this.zzb, this.zzc);
    }
}
