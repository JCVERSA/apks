package com.google.android.gms.measurement.internal;

import defpackage.u2j;

final class zzin implements Runnable {
    final u2j zza;
    final u2j zzb;
    final long zzc;
    final boolean zzd;
    final h zze;

    public zzin(h hVar, u2j u2jVar, u2j u2jVar2, long j, boolean z) {
        this.zze = hVar;
        this.zza = u2jVar;
        this.zzb = u2jVar2;
        this.zzc = j;
        this.zzd = z;
    }

    @Override
    public final void run() {
        this.zze.n(this.zza, this.zzb, this.zzc, this.zzd, null);
    }
}
