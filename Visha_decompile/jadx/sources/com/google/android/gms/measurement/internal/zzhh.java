package com.google.android.gms.measurement.internal;

final class zzhh implements Runnable {
    final long zza;
    final g zzb;

    public zzhh(g gVar, long j) {
        this.zzb = gVar;
        this.zza = j;
    }

    @Override
    public final void run() {
        this.zzb.a.F().k.b(this.zza);
        this.zzb.a.b().p().b("Session timeout duration set", Long.valueOf(this.zza));
    }
}
