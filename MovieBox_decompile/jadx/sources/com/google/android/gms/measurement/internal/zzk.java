package com.google.android.gms.measurement.internal;

final class zzk implements Runnable {
    private final com.google.android.gms.internal.measurement.zzdo zza;
    private final zzbf zzb;
    private final String zzc;
    private final AppMeasurementDynamiteService zzd;

    zzk(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzdo zzdoVar, zzbf zzbfVar, String str) {
        this.zza = zzdoVar;
        this.zzb = zzbfVar;
        this.zzc = str;
        this.zzd = appMeasurementDynamiteService;
    }

    @Override
    public final void run() {
        this.zzd.zza.zzr().zza(this.zza, this.zzb, this.zzc);
    }
}
