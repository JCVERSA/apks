package com.google.android.gms.measurement.internal;

import defpackage.wd8;

final class zziu implements Runnable {
    final zzq zza;
    final boolean zzb;
    final zzlc zzc;
    final j zzd;

    public zziu(j jVar, zzq zzqVar, boolean z, zzlc zzlcVar) {
        this.zzd = jVar;
        this.zza = zzqVar;
        this.zzb = z;
        this.zzc = zzlcVar;
    }

    @Override
    public final void run() {
        j jVar = this.zzd;
        zzee zzeeVar = jVar.d;
        if (zzeeVar == null) {
            jVar.a.b().q().a("Discarding data. Failed to set user property");
            return;
        }
        wd8.l(this.zza);
        this.zzd.q(zzeeVar, this.zzb ? null : this.zzc, this.zza);
        this.zzd.D();
    }
}
