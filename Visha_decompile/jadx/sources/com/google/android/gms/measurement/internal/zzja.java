package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import defpackage.u2j;

final class zzja implements Runnable {
    final u2j zza;
    final j zzb;

    public zzja(j jVar, u2j u2jVar) {
        this.zzb = jVar;
        this.zza = u2jVar;
    }

    @Override
    public final void run() {
        j jVar = this.zzb;
        zzee zzeeVar = jVar.d;
        if (zzeeVar == null) {
            jVar.a.b().q().a("Failed to send current screen to service");
            return;
        }
        try {
            u2j u2jVar = this.zza;
            if (u2jVar == null) {
                zzeeVar.zzq(0L, null, null, jVar.a.e().getPackageName());
            } else {
                zzeeVar.zzq(u2jVar.c, u2jVar.a, u2jVar.b, jVar.a.e().getPackageName());
            }
            this.zzb.D();
        } catch (RemoteException e) {
            this.zzb.a.b().q().b("Failed to send current screen to the service", e);
        }
    }
}
