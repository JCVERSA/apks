package com.google.android.gms.internal.play_billing;

import defpackage.ofg;

final class zzcu$zzb<V> implements Runnable {
    final g zza;
    final ofg zzb;

    public zzcu$zzb(g gVar, ofg ofgVar) {
        this.zza = gVar;
        this.zzb = ofgVar;
    }

    @Override
    public final void run() {
        if (this.zza.b != this) {
            return;
        }
        if (m.j(this.zza, this, g.s(this.zzb))) {
            g.v(this.zza, false);
        }
    }
}
