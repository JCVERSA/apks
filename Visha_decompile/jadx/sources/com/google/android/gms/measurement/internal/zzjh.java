package com.google.android.gms.measurement.internal;

import defpackage.wd8;

final class zzjh implements Runnable {
    final zzq zza;
    final boolean zzb;
    final zzaw zzc;
    final String zzd;
    final j zze;

    public zzjh(j jVar, boolean z, zzq zzqVar, boolean z2, zzaw zzawVar, String str) {
        this.zze = jVar;
        this.zza = zzqVar;
        this.zzb = z2;
        this.zzc = zzawVar;
        this.zzd = str;
    }

    @Override
    public final void run() {
        j jVar = this.zze;
        zzee zzeeVar = jVar.d;
        if (zzeeVar == null) {
            jVar.a.b().q().a("Discarding data. Failed to send event to service");
            return;
        }
        wd8.l(this.zza);
        this.zze.q(zzeeVar, this.zzb ? null : this.zzc, this.zza);
        this.zze.D();
    }
}
