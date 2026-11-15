package com.google.android.gms.measurement.internal;

import defpackage.kwg;
import defpackage.sfj;
import defpackage.uee;

final class zzhy implements Runnable {
    final uee zza;
    final int zzb;
    final long zzc;
    final boolean zzd;
    final uee zze;
    final g zzf;

    public zzhy(g gVar, uee ueeVar, int i, long j, boolean z, uee ueeVar2) {
        this.zzf = gVar;
        this.zza = ueeVar;
        this.zzb = i;
        this.zzc = j;
        this.zzd = z;
        this.zze = ueeVar2;
    }

    @Override
    public final void run() {
        this.zzf.I(this.zza);
        g.b0(this.zzf, this.zza, this.zzb, this.zzc, false, this.zzd);
        sfj.b();
        if (this.zzf.a.z().v(null, kwg.u0)) {
            g.a0(this.zzf, this.zza, this.zze);
        }
    }
}
