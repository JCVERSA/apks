package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzcf;

final class zzk implements Runnable {
    final zzcf zza;
    final String zzb;
    final String zzc;
    final boolean zzd;
    final AppMeasurementDynamiteService zze;

    public zzk(AppMeasurementDynamiteService appMeasurementDynamiteService, zzcf zzcfVar, String str, String str2, boolean z) {
        this.zze = appMeasurementDynamiteService;
        this.zza = zzcfVar;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = z;
    }

    @Override
    public final void run() {
        this.zze.zza.L().V(this.zza, this.zzb, this.zzc, this.zzd);
    }
}
