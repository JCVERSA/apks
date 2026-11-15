package com.google.android.gms.measurement.internal;

final class zzhw implements Runnable {
    final Boolean zza;
    final g zzb;

    public zzhw(g gVar, Boolean bool) {
        this.zzb = gVar;
        this.zza = bool;
    }

    @Override
    public final void run() {
        this.zzb.N(this.zza, true);
    }
}
