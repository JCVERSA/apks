package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import defpackage.u2j;

final class zzim implements Runnable {
    final Bundle zza;
    final u2j zzb;
    final u2j zzc;
    final long zzd;
    final h zze;

    public zzim(h hVar, Bundle bundle, u2j u2jVar, u2j u2jVar2, long j) {
        this.zze = hVar;
        this.zza = bundle;
        this.zzb = u2jVar;
        this.zzc = u2jVar2;
        this.zzd = j;
    }

    @Override
    public final void run() {
        h.v(this.zze, this.zza, this.zzb, this.zzc, this.zzd);
    }
}
