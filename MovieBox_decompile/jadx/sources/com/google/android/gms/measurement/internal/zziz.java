package com.google.android.gms.measurement.internal;

final class zziz implements Runnable {
    private final zzon zza;
    private final zzo zzb;
    private final zzic zzc;

    zziz(zzic zzicVar, zzon zzonVar, zzo zzoVar) {
        this.zza = zzonVar;
        this.zzb = zzoVar;
        this.zzc = zzicVar;
    }

    @Override
    public final void run() {
        this.zzc.zza.zzr();
        if (this.zza.zza() == null) {
            this.zzc.zza.zza(this.zza.zza, this.zzb);
        } else {
            this.zzc.zza.zza(this.zza, this.zzb);
        }
    }
}
