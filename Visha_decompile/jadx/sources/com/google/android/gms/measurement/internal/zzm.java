package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzcf;

final class zzm implements Runnable {
    final zzcf zza;
    final String zzb;
    final String zzc;
    final AppMeasurementDynamiteService zzd;

    public zzm(AppMeasurementDynamiteService appMeasurementDynamiteService, zzcf zzcfVar, String str, String str2) {
        this.zzd = appMeasurementDynamiteService;
        this.zza = zzcfVar;
        this.zzb = str;
        this.zzc = str2;
    }

    @Override
    public final void run() {
        this.zzd.zza.L().S(this.zza, this.zzb, this.zzc);
    }
}
