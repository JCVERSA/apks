package com.google.android.gms.measurement.internal;

import defpackage.b7e;
import defpackage.uoi;

final class zzao implements Runnable {
    final uoi zza;
    final a zzb;

    public zzao(a aVar, uoi uoiVar) {
        this.zzb = aVar;
        this.zza = uoiVar;
    }

    @Override
    public final void run() {
        this.zza.d();
        if (b7e.a()) {
            this.zza.a().w(this);
            return;
        }
        boolean zE = this.zzb.e();
        this.zzb.c = 0L;
        if (zE) {
            this.zzb.c();
        }
    }
}
