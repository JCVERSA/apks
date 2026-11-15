package com.google.android.gms.measurement.internal;

import defpackage.kwg;
import defpackage.sfj;
import defpackage.uee;

final class zzhx implements Runnable {
    final uee zza;
    final long zzb;
    final int zzc;
    final long zzd;
    final boolean zze;
    final uee zzf;
    final g zzg;

    public zzhx(g gVar, uee ueeVar, long j, int i, long j2, boolean z, uee ueeVar2) {
        this.zzg = gVar;
        this.zza = ueeVar;
        this.zzb = j;
        this.zzc = i;
        this.zzd = j2;
        this.zze = z;
        this.zzf = ueeVar2;
    }

    @Override
    public final void run() {
        this.zzg.I(this.zza);
        this.zzg.y(this.zzb, false);
        g.b0(this.zzg, this.zza, this.zzc, this.zzd, true, this.zze);
        sfj.b();
        if (this.zzg.a.z().v(null, kwg.u0)) {
            g.a0(this.zzg, this.zza, this.zzf);
        }
    }
}
