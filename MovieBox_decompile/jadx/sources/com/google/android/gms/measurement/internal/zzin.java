package com.google.android.gms.measurement.internal;

final class zzin implements Runnable {
    private final zzae zza;
    private final zzo zzb;
    private final zzic zzc;

    zzin(zzic zzicVar, zzae zzaeVar, zzo zzoVar) {
        this.zza = zzaeVar;
        this.zzb = zzoVar;
        this.zzc = zzicVar;
    }

    @Override
    public final void run() {
        this.zzc.zza.zzr();
        if (this.zza.zzc.zza() == null) {
            this.zzc.zza.zza(this.zza, this.zzb);
        } else {
            this.zzc.zza.zzb(this.zza, this.zzb);
        }
    }
}
