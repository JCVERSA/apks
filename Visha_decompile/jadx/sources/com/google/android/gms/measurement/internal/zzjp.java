package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;

final class zzjp implements Runnable {
    final i zza;

    public zzjp(i iVar) {
        this.zza = iVar;
    }

    @Override
    public final void run() {
        j jVar = this.zza.d;
        Context contextE = jVar.a.e();
        this.zza.d.a.d();
        j.L(jVar, new ComponentName(contextE, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
