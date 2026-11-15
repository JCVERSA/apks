package com.google.android.gms.measurement.internal;

import defpackage.zui;

final class zzfx implements Runnable {
    final zui zza;
    final e zzb;

    public zzfx(e eVar, zui zuiVar) {
        this.zzb = eVar;
        this.zza = zuiVar;
    }

    @Override
    public final void run() {
        e.f(this.zzb, this.zza);
        this.zzb.m(this.zza.g);
    }
}
