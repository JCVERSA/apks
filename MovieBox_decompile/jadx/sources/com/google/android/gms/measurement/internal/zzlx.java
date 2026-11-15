package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

final class zzlx implements Runnable {
    private final zzo zza;
    private final boolean zzb;
    private final zzon zzc;
    private final zzls zzd;

    zzlx(zzls zzlsVar, zzo zzoVar, boolean z10, zzon zzonVar) {
        this.zza = zzoVar;
        this.zzb = z10;
        this.zzc = zzonVar;
        this.zzd = zzlsVar;
    }

    @Override
    public final void run() throws Throwable {
        zzgb zzgbVar = this.zzd.zzb;
        if (zzgbVar == null) {
            this.zzd.zzj().zzg().zza("Discarding data. Failed to set user property");
            return;
        }
        Preconditions.checkNotNull(this.zza);
        this.zzd.zza(zzgbVar, this.zzb ? null : this.zzc, this.zza);
        this.zzd.zzar();
    }
}
