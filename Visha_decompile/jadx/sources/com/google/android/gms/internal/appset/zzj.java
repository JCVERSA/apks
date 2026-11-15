package com.google.android.gms.internal.appset;

import defpackage.i1j;
import defpackage.m02;

final class zzj implements Runnable {
    final a zza;

    public zzj(a aVar, i1j i1jVar) {
        this.zza = aVar;
    }

    @Override
    public final void run() {
        long jB = this.zza.b();
        if (jB == -1 || m02.a().currentTimeMillis() <= jB) {
            return;
        }
        a.f(this.zza.a);
    }
}
