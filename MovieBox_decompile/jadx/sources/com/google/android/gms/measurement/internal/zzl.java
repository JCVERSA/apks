package com.google.android.gms.measurement.internal;

final class zzl implements Runnable {
    private final com.google.android.gms.internal.measurement.zzdo zza;
    private final String zzb;
    private final String zzc;
    private final AppMeasurementDynamiteService zzd;

    zzl(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzdo zzdoVar, String str, String str2) {
        this.zza = zzdoVar;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = appMeasurementDynamiteService;
    }

    @Override
    public final void run() {
        this.zzd.zza.zzr().zza(this.zza, this.zzb, this.zzc);
    }
}
