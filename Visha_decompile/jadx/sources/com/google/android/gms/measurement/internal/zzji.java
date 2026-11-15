package com.google.android.gms.measurement.internal;

import defpackage.wd8;

final class zzji implements Runnable {
    final zzq zza;
    final boolean zzb;
    final zzac zzc;
    final zzac zzd;
    final j zze;

    public zzji(j jVar, boolean z, zzq zzqVar, boolean z2, zzac zzacVar, zzac zzacVar2) {
        this.zze = jVar;
        this.zza = zzqVar;
        this.zzb = z2;
        this.zzc = zzacVar;
        this.zzd = zzacVar2;
    }

    @Override
    public final void run() {
        j jVar = this.zze;
        zzee zzeeVar = jVar.d;
        if (zzeeVar == null) {
            jVar.a.b().q().a("Discarding data. Failed to send conditional user property to service");
            return;
        }
        wd8.l(this.zza);
        this.zze.q(zzeeVar, this.zzb ? null : this.zzc, this.zza);
        this.zze.D();
    }
}
