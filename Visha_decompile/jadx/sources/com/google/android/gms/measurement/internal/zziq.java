package com.google.android.gms.measurement.internal;

import defpackage.u2j;

final class zziq implements Runnable {
    final u2j zza;
    final long zzb;
    final h zzc;

    public zziq(h hVar, u2j u2jVar, long j) {
        this.zzc = hVar;
        this.zza = u2jVar;
        this.zzb = j;
    }

    @Override
    public final void run() {
        this.zzc.o(this.zza, false, this.zzb);
        h hVar = this.zzc;
        hVar.e = null;
        hVar.a.L().t(null);
    }
}
