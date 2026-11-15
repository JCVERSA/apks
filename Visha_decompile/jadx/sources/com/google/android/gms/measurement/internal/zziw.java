package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import defpackage.wd8;

final class zziw implements Runnable {
    final zzq zza;
    final j zzb;

    public zziw(j jVar, zzq zzqVar) {
        this.zzb = jVar;
        this.zza = zzqVar;
    }

    @Override
    public final void run() {
        j jVar = this.zzb;
        zzee zzeeVar = jVar.d;
        if (zzeeVar == null) {
            jVar.a.b().q().a("Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            wd8.l(this.zza);
            zzeeVar.zzm(this.zza);
        } catch (RemoteException e) {
            this.zzb.a.b().q().b("Failed to reset data on the service: remote exception", e);
        }
        this.zzb.D();
    }
}
